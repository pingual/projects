const express = require('express');
const http = require('http');
const socketIO = require('socket.io');
const path = require('path');

const app = express();
const server = http.createServer(app);
const io = socketIO(server);

app.use(express.static(path.join(__dirname, 'public')));

const cartes_base = {
  "oeuf": 18,
  "poule": 10,
  "renard": 10,
  "ver de terre": 2,
  "chien": 2,
  "fermier": 1,
  "renard déguisé en poule": 2,
  "canard": 2,
  "coq": 1,
  "oeuf paque": 4,
  "cocote": 2,
  "pinpin": 2,
  "lapin paque": 1
};

let resultat = {};
let cartes = [];
let cmpt = 0;
let partieEnCours = false;
let utile = 0;
let nb_oeuf = 0;
let nb_poule = 0;
let nb_ver = 0;
let nb_chien = 0;
let nb_canard = 0;
let nb_oeuf_paque = 0;
let nb_cocote = 0;
let temp_oeuf = 0;
let temp_oeuf_paque = 0;
let lapin = false;
let coq = false;
let coche = ["oeuf","poule","renard"]

function melanger() {
  for (const elmt in cartes_base) {
    if (coche.includes(elmt)) {
      for (let i = 0; i < cartes_base[elmt]; i++) {
        cartes.push(elmt);
      }
    } else {
    }
  }
  shuffle(cartes);
}

function shuffle(array) {
  let currentIndex = array.length;
  let temporaryValue, randomIndex;

  while (currentIndex !== 0) {
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}

function tests(carte) {
  if (carte === "oeuf") {
    utile++;
    if (lapin) {
    if (temp_oeuf === 2) {
        nb_oeuf++;
    }
    temp_oeuf = 1;
    } else {
    nb_oeuf++;
    }
} else if (carte === "poule") {
    if (nb_ver > 0) {
    nb_ver--;
    utile += 2;
    } else if (nb_oeuf > 0) {
    utile++;
    nb_oeuf--;
    nb_poule++;
    }
} else if (carte === "renard") {
    if (nb_chien > 0) {
    nb_chien--;
    utile += 2;
    } else if (nb_poule > 0) {
    utile++;
    nb_oeuf++;
    nb_poule--;
    }
} else if (carte === "ver de terre") {
    nb_ver++;
} else if (carte === "chien") {
    nb_chien++;
} else if (carte === "fermier") {
    if (nb_oeuf > 0 || nb_cocote > 0) {
    utile++;
    }
    nb_oeuf = 0;
    nb_oeuf_paque += nb_cocote;
    nb_cocote = 0;
} else if (carte === "renard déguisé en poule") {
    if (nb_poule > 0) {
    utile++;
    nb_oeuf++;
    nb_poule--;
    }
} else if (carte === "canard") {
    utile++;
    nb_canard++;
} else if (carte === "coq") {
    coq = true;
    utile++;
} else if (carte === "oeuf paque") {
    utile++;
    if (lapin) {
    if (temp_oeuf_paque === 2) {
        nb_oeuf_paque++;
    }
    temp_oeuf_paque = 1;
    } else {
    nb_oeuf_paque++;
    }
} else if (carte === "cocote") {
    if (nb_oeuf_paque > 0) {
    utile++;
    nb_oeuf_paque--;
    nb_cocote++;
    }
} else if (carte === "pinpin") {
    if (nb_oeuf > 0) {
    utile++;
    nb_oeuf--;
    nb_oeuf_paque++;
    }
} else if (carte === "lapin paque") {
    lapin = true;
    utile++;
}

if (temp_oeuf_paque === 1) {
    temp_oeuf_paque = 2;
} else if (temp_oeuf_paque === 2) {
    nb_oeuf_paque++;
}
if (temp_oeuf === 1) {
    temp_oeuf = 2;
} else if (temp_oeuf === 2) {
    nb_oeuf++;
}
}

io.on('connection', (socket) => {
  console.log('Un nouveau client est connecté');

  socket.on('carteSuivante', () => {
    if (!partieEnCours) {
      cartes = [];
      melanger();
      cmpt = 0;
      utile = 0;
      nb_oeuf = 0;
      nb_poule = 0;
      nb_ver = 0;
      nb_chien = 0;
      nb_canard = 0;
      nb_oeuf_paque = 0;
      nb_cocote = 0;
      temp_oeuf = 0;
      temp_oeuf_paque = 0;
      lapin = false;
      coq = false;
      partieEnCours = true;
    }

    if (cmpt < cartes.length) {
      const carte = cartes[cmpt];
      cmpt++;
      tests(carte);

      // Diffuser la nouvelle carte aux clients connectés
      io.emit('nouvelleCarte', carte,cmpt);
    } else {
      // Diffuser la fin de partie et le résultat aux clients connectés
      io.emit('finDePartie', "Vous avez perdu !", cmpt);

      partieEnCours = false;
    }
  });

  socket.on('miseAJourCheckbox', (etatCheckbox,nomCarte) => {
    // Diffuser l'événement à tous les clients connectés, y compris l'émetteur initial
    if (!etatCheckbox) {
      if (coche.includes(nomCarte.toLowerCase())) {
        coche.splice(coche.indexOf(nomCarte.toLowerCase()),1);
      }
    } else {
      if (!coche.includes(nomCarte.toLowerCase())) {
        coche.push(nomCarte.toLowerCase());
      }
    }
    io.emit('miseAJourCheckbox'+nomCarte, etatCheckbox);
  });

  socket.on('finPartie', () => {
    if (coq) {
      socket.emit('coqFin',nb_oeuf+nb_oeuf_paque);
      partieEnCours = false;
    } else if (nb_oeuf+nb_oeuf_paque>=5) {
      socket.emit('finDePartie',"Vous avez gagné !",nb_oeuf+nb_oeuf_paque);
      socket.broadcast.emit('finDePartie',"Vous avez perdu !",nb_oeuf+nb_oeuf_paque);
      partieEnCours = false;
    } else {
      socket.emit('finDePartie',"Vous avez perdu !",nb_oeuf+nb_oeuf_paque);
      socket.broadcast.emit('finDePartie',"Vous avez gagné !",nb_oeuf+nb_oeuf_paque);
      partieEnCours = false;
    }
  })

  socket.on('coqTermineG', () => {
      socket.emit('finDePartie',"Vous avez gagné !",nb_oeuf+nb_oeuf_paque)
      socket.broadcast.emit('finDePartie',"Vous avez perdu !",nb_oeuf+nb_oeuf_paque)
  })

  socket.on('coqTermineP', () => {
      socket.emit('finDePartie',"Vous avez perdu !",nb_oeuf+nb_oeuf_paque)
      socket.broadcast.emit('finDePartie',"Vous avez gagné !",nb_oeuf+nb_oeuf_paque)
  })

  socket.on('disconnect', () => {
    console.log('Un client s\'est déconnecté');
  });

  
  socket.on('ajouterScore', (username) => {
    if (username in resultat) {
      resultat[username] = resultat[username]+1;
    } else {
      resultat[username] = 1;
    }
    socket.emit('afficherScore',resultat);
    socket.broadcast.emit('afficherScore',resultat);
  });

});

const port = process.env.PORT || 3000;
server.listen(port, () => {
  console.log(`Serveur en écoute sur le port ${port}`);
});
