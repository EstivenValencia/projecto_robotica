# Robotica-Actividad-1

Este repositorio contiene el paquete de ROS **actividad_1** utilizado para la realización de la primera actividad de la asignatura. Dentro de este paquete, hay scripts y archivos de configuración que permiten la interacción y control de un brazo robótico mediante la publicación y suscripción a diferentes topics.

## Estructura del Paquete

- **Paquete correspondiente a la entrega**: `actividad_1`
- **Ubicación de scripts**: `src/actividad_1/src/practica_1`
- **Carpeta de configuraciones y poses**: `src/actividad_1/src/practica_1/confs_y_poses`

## Scripts

En la carpeta `src/actividad_1/src/practica_1` se encuentran cinco scripts fundamentales para la comunicación y control del brazo robótico:

1. **basic_publisher.py**: Publica mensajes de tipo numérico en el topic **consignas** para enviar comandos básicos al brazo robótico. Este script está pensado para realizar acciones sencillas.

2. **basic_subscriber.py**: Suscribe el brazo robótico al topic anterior y recibe datos numéricos, permitiendo que el brazo ejecute acciones basadas en esos datos.

3. **publisher.py**: Publica en diferentes topics información relacionada con la configuración de motores, poses, trayectorias y objetos (en este caso el suelo) para el brazo robótico.

4. **subscriber.py**: Recibe los mensajes publicados en los topics mencionados para ejecutar órdenes específicas en el brazo robótico.

5. **confs_y_poses.py**: Crea dos archivos yaml que contienen una pose y una configuración que se utilizan por los scripts anteriores para mover el brazo robótico.

### Mensaje Personalizado para el Suelo

El paquete también incluye un archivo `.msg` que define el tipo de mensaje personalizado para el **suelo**. En él simplemente se define la estructura del tipo de mensaje.
