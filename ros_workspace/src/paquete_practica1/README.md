# PRÁCTICA CONTROL ROBOT

La práctica presentada incluye la práctica opcional que tenia como reto utilizar diferentes topics para cada movimiento

## Link carpeta comprimida con el espacio de trabajo

https://drive.google.com/file/d/1tyhaF76I-1l9Cl5CvkdzHc7TRbAn0_6I/view?usp=sharing

## Funcionamiento del Sistema

El sistema está compuesto por dos nodos principales: un nodo de órdenes y un nodo de control. 

1. **Nodo de Órdenes**: 
   - Ejecuta un bucle infinito que solo finaliza cuando el sistema maestro se detiene.
   - Publica en cuatro topics distintos, enviando órdenes específicas para controlar al robot o interactuar con obstáculos en el entorno.

2. **Nodo de Control**: 
   - Está suscrito a estos cuatro topics y ejecuta acciones en el robot o en obstáculos según las órdenes recibidas.

Los topics utilizados en el sistema son los siguientes:

- **`mover_pose`**: Publica mensajes de tipo `/geometry_msgs/Pose` cuando el usuario selecciona la opción 2 en el menú. El nodo de control recibe estas posiciones y desplaza el robot hasta el punto especificado.

- **`mover_configuracion`**: Publica mensajes de tipo `/sensor_msgs/JointState` al seleccionar la opción 3. El nodo de control utiliza estos mensajes para mover el robot mediante el ajuste de los ángulos de las articulaciones.

- **`trayectoria_cartesiana`**: Publica mensajes de tipo `/geometry_msgs/PoseArray`, que contienen una lista de poses para que el robot las siga. Esta orden se activa cuando el usuario selecciona la opción 4.

- **`anadir_obstaculos`**: Publica mensajes personalizados de tipo `FloatPose`, definidos en un paquete customizado. Estos mensajes incluyen una pose y un valor flotante para definir la posición y el tamaño de un obstáculo cuadrado en el plano del robot, y se envían cuando el usuario selecciona la opción 1. El mensaje customizado de FloatPose se encuentra definido en la carpeta msg del paquete_practica1

## Ambiente de Trabajo

Las pruebas del sistema se realizaron con el simulador del robot modelo 206. Se realizaron también pruebas con otros robots, pero debido a diferencias en las posiciones iniciales, algunos movimientos no pudieron ejecutarse en todos los modelos. El sistema evalúa y muestra en pantalla si la trayectoria es ejecutable, de modo que solo se realiza la ejecución cuando la planificación de la trayectoria se cumple al 100%.

## Organización de Carpetas

La estructura del proyecto está organizada en el paquete `paquete_practica1`, ubicado en `/home/laboratorio/ros_workspace/src/paquete_practica1`. Este paquete contiene los siguientes archivos:

- **`nodo_ordenes.py`**: Muestra un menú al usuario y actúa como publicador en los cuatro topics del sistema.
- **`nodo_control.py`**: Está suscrito a los cuatro topics. Cuando se recibe una nueva orden, el nodo ejecuta la acción correspondiente en el robot utilizando la clase `ControlRobot`, definida en el archivo `tools.py`.
- **`tools.py`**: Contiene la clase de  `ControlRobot` con todas las funcionalidades para interactuar con el robot, tales como, obtener pose, mover a pose, obtener angulos de los motores, etc.
