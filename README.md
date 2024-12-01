# Proyecto de Visión por Computador y Robótica

Este proyecto combina visión por computador y robótica para resolver dos problemas:  
1. **Shapes**: Detectar piezas geométricas y colocarlas en un tablero.  
2. **Torres de Hanoi**: Resolver el problema detectando las posiciones iniciales de las piezas.  

## Arquitectura y Comunicación

El sistema está basado en **ROS**, con nodos que se comunican mediante *topics*. Los principales nodos incluyen:  
- **TakePicture**: Captura imágenes y determina el flujo de procesamiento (Shapes o Hanoi).  
- **control_robot**: Gestiona los movimientos del brazo robótico.  
- **Main**: Coordina el flujo activando nodos según el progreso.  

### Principales *Topics*
- **/TakeImage**: Indica si es necesario capturar una nueva imagen.  
- **/CurrentImage**: Contiene la imagen capturada para su procesamiento.  
- **/PositionSceneryShape/Hanoi**: Transfieren información de las piezas detectadas.  
- **/MovementToDo** y **/MovementDone**: Manejan las tareas de movimiento del brazo robótico.  

## Imagen Docker

Debido a que la imagen commit pesa cerca de 12 GB es imposible adjuntarla a este repositorio, por lo que 
se anexa el link del drive: https://drive.google.com/file/d/1HXVqoR0rxGrfq1wqlXWBblIBJs_JRbuQ/view?usp=sharing
