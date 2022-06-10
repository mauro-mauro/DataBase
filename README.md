## Base Datos - Proyecto integrador Portfolio Web Full Stack

![Esquema Logico Base Datos](esquemaLogicoDB.png?raw=true "Esquema Logico Base Datos")
Originalmente la base de datos contaba con tablas relacionadas, pero una vez subida a la nube, descubrí que las relaciones demoraban mucho la primer carga de spring boot, teniendo varias tablas relacionadas, excedía el tiempo de respuesta entrando en estado de crash. Por este motivo decidí no usar tablas relacionadas, y en su lugar, usar consultas a la base de datos personalizadas, logrando el mismo resultado con tiempo de primer carga optimo.
