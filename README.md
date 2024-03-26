# castor_spotify_app

Prueba tecnica para el cargo de flutter developer en castor

## Version de Flutter 

Este proyecto fue realizado con la versión mas actual de flutter 3.19.4
se desarrolló bajo el modelo de arquitectura (Clean architecure) y el patrón Bloc 

## Instalación del entorno de desarrollo

para compilar este proyecto de manera local, clone primero el repositorio asegurese de tener instalada la versión de flutter antes mencionada 

una vez hecho eso, ejecute los siguientes comandos 

flutter clean 
flutter pub get
flutter  run
en caso de no tener generados los archivos de las entidades ejecutar el siguiente comando : dart run build_runner build --delete-conflicting-outputs

tambien asegurese de crear agregar el archivo .env a la carpeta raiz del proyecto (al mismo nivel que el pubspec.yaml ), con las siguientes credenciales 

SPOTIFY_CLIENT_ID=''
SPOTIFY_CLIENT_SECRET=''
