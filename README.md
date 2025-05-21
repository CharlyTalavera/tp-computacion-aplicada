# Trabajo Practico Integrador Grupal

## Integrantes
* Thomas Dery
* Anthony de Jesus Herrera Timaure
* Joaquin Moises
* Pablo Ariel Mayobre
* Carlos Damián talavera

## Consignas

### 1) Configuración del entorno

1) [X] La máquina virtual está dividida en partes y comprimidas en formato “.rar”. Descargar y ensamblar los archivos utilizando herramientas como WinRar.
2) [X] La clave de root es desconocida inicialmente, por lo que deberá ser blanqueada antes de comenzar. Una vez dentro del sistema operativo, la misma debe ser cambiada por “palermo” (sin comillas).
3) [X] Establecer el nombre de hostname como TPServer.
    
### 2) Servicios
1) [X] SSH: instalar y configurar el servicio de SSH. El servidor debe permitir el acceso al usuario root mediante una clave privada/pública, proporcionada junto con la
máquina virtual en Blackboard.
2) [X] WEB: instalar y configurar el servidor Apache con soporte para PHP (versión 7.3 o superior). Configurar el servidor para servir el archivo “index.php” y “logo.png”,
disponible junto con la máquina virtual en Blackboard.
3) [X] Base de datos: instalar y configurar MariaDB. Cargar, en el motor de base de
datos, el script SQL, denominado “db.sql”, disponible junto con la máquina virtual
en Blackboard.
Nota: las pruebas de conectividad y acceso al sitio web deben realizarse desde una
máquina física u otra máquina en la misma red.
### 3) Configuración de Red
1) [X] Configurar la interfaz de red con una IP estática en el archivo de configuración. La
IP debe pertenecer al mismo rango red de la máquina física.
2) [X] El archivo de configuración debe incluir los campos ADDRESS, NETMASK y
GATEWAY.
### 4) Almacenamiento
1) [X] Agregar un nuevo disco de 10 GB adicional a la máquina virtual.
2) [X] Crear dos particiones estándar (tipo 83), con las siguientes capacidades:
* /www_dir: 3 GB
* /backup_dir: 6 GB
3) [X] Configurar el directorio /www_dir para alojar el archivo index.php y logo.png.
Actualizar el archivo de configuración de Apache para que éste apunte a la nueva
ubicación (ver archivos 000-default.conf y apache2).
4) [X] Configurar el directorio /www_dir para que se monte automáticamente al iniciar
el sistema operativo.
5) [X] Configurar el directorio /backup_dir para que se monte automáticamente al iniciar
el sistema operativo.
Nota: se debe crear un archivo en /proc llamado “particion”, y redirigir el contenido del
archivo “partitions” ubicado en /proc (el archivo original es efímero y se pierde al apagar
la máquina).
3© Universidad de Palermo. Prohibida la reproducción total o parcial de imágenes y textos.
### 5) Backup
1) [ ] Desarrollar un script de backup denominado “backup_full.sh”, y guardarlo en
/opt/scripts.
2) [ ] El script debe backupear los directorios indicados con nombres que incluyan la
fecha en formato ANSI (YYYMMDD). Por ejemplo, para /var/log, el archivo
generado debería llamarse “log_bkp_20240302.tar.gz”.
3) [ ] Los backups generados deben almacenarse en la partición que tiene montado el
directorio /backup_dir.
4) [ ] El script debe aceptar argumentos como origen (lo que se va a backupear) y
destino (dónde se va a backupear).
5) [ ] El script debe incluir una opción de ayuda (-help), para guiar al usuario en el uso
del script.
6) [ ] El script debe validar que los sistemas de archivos de origen y destino estén
disponibles antes de ejecutar el backup.
7) [ ] El script debe ser incluido en un calendario de tareas para correr
automáticamente:
• TODOS LOS DÍAS a las 00:00 hs: Backupear “/var/logs”
• LUNES, MIÉRCOLES, VIERNES a las 23:00 hs: Backupear “/www_dir”
### 6) Entregables
1) [X] Crear un repositorio en github (es gratuito), y redactar el README.md con los
nombres de los participantes del grupo.
2) [X] Subir, en el repositorio creado, los directorios:
• “/root”, “/etc”, “/opt”, “/proc”, “/www_dir” y “/backup_dir”. Todos ellos
comprimidos individualmente en formato “.tar.gz”.
• “/var” se lo debe splitear en partes pequeñas para que pueda ser subido.
3) [ ] Realizar un diagrama topológico de la infraestructura armada.