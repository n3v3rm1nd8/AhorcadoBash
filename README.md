# Información previa

- Es el clasico juego del ahorcado pero hecho en bash donde el primer jugador puede tanto escribir una letra o palabra o frase siempre y cuando no haya ningun caracter extraño de por medio, hecho esto el otro jugador tendria que elegir la otra opcion para adivinar la palabra escrita anteriormente.
- Recalcar que los binarios que utiliza este script deberian de venir practicamente en cada distribución de Linux.

## Uso
Nos clonamos el repositorio:

`$ sudo git clone https://github.com/n3v3rm1nd8/AhorcadoBash`

Le damos permisos de ejecucion a ambos scripts:

`$ chmod +x SETUP.sh; chmod +x ahorcado.sh`

Nos descargamos las dependencias en el caso de que no las tengamos:

`$ sudo ./SETUP.sh`

Hecho esto, ya podemos jugar:

`$ ./ahorcado.sh`