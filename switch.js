const readline = require('readline');  // LO VAMOS A USAR PARA EL JUEGO DE PIEDRA, PAPEL O TIJERA, RECUERDALO!!

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("Inicia el juego:");
console.log("Elige tu ataque:");

rl.question("Digita 1 para piedra, 2 para papel y 3 para tijera: ", function (respuesta) {
  let eleccionUsuario = parseInt(respuesta);
  let eleccionMaquina = Math.floor(Math.random() * 3) + 1;

  const opciones = ["", "piedra", "papel", "tijera"];

  if (eleccionUsuario >= 1 && eleccionUsuario <= 3) {
    console.log(`Elegiste ${opciones[eleccionUsuario]}.`);
    console.log(`Tu contrincante ha elegido ${opciones[eleccionMaquina]}.`);
  } else {
    console.log("La opción que elegiste no es válida.");
    rl.close();
    return;
  }

  const resultado = `${eleccionUsuario}-${eleccionMaquina}`;

  switch (resultado) {
    case "1-3":
    case "2-1":
    case "3-2":
      console.log("¡Has ganado!");
      break;
    case "1-2":
    case "2-3":
    case "3-1":
      console.log("Ha ganado tu contrincante, ¡sigue intentándolo!");
      break;
    case "1-1":
    case "2-2":
    case "3-3":
      console.log("Empate, inténtalo de nuevo.");
      break;
    default:
      console.log("Error inesperado.");
  }

  rl.close();
});

