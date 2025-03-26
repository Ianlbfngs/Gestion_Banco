# TPI - Sistema de Gestión: Banco

Aplicación web dinamica desarrollada en Java con conexion a base de datos, orientada a la gestión de un banco.

## Tabla de Contenidos
- [Tecnologías y conceptos utilizados](#tecnologías-y-conceptos-utilizados)
- [Funcionalidades](#funcionalidades)
- [Utilización](#utilización)
- [Estructura](#estructura)


## Teconologías y conceptos utilizados
- Java 8
- Apache Tomcat
- MySQL
- JDBC
- HTML / CSS / JavaScript
- Git y GitHub
- Arquitectura en tres capas
- Programación Orientada a Objetos (POO)
- Trabajo en equipo

## Funcionalidades
- Login de clientes y administradores
- Listados con multiples filtros
- Validaciones al dar de alta registros
### Funciones del usuario administrador
- ABML / CRUD de clientes y cuentas
- Autorizacion de prestamos
- Informes generales
### Funciones del usuario cliente
- Listado de movimientos
- Transferencias
- Solicitud y pago de prestamos
- Gestion de multiples cuentas


## Utilización
1. Asegurarse de tener instalado un IDE compatible con Java, JDK 8+, MySQL Server y Apache Tomcat 8+
2. Ejecutar el script 'BDSistemaBancario.sql' en MySQL para crear la base de datos 
3. Clonar el repositorio o descargar el proyecto
4. Importar el proyecto en un IDE
5. Ejecutar el proyecto
6. Entrar desde un navegador a la dirección 'http://localhost:8080/Tp_Integrador_Grupo_1/'
7. Loguearse como administrador 
    Usuario: admin
    Contraseña: admin

## Estructura
```plaintext
/WebContent         --> Capa de presentación - Vistas JSP
/scr/presentacion   --> Capa de presentación - Servlet controlador de solicitudes
/scr/negocioImpl    --> Capa de lógica de negocio 
/scr/datosImpl      --> Capa de acceso a datos - Consultas SQL y conexión a la base de datos
/entidad            --> Definicion de los modelos de datos
 