---
layout: post
title: Patrones de diseño en JavaScript
published: true
---

#### Porque es muy bueno que conozcamos algunos de los estándares ya creados y probados por algunos programadores, !por qué deberías saberlo!…

![_config.yml]({{ site.baseurl }}/images/js.png)

Cuando uno se adentra al mundo de JS, leyendo tutoriales, siguiendo videos en youtube, es decir siendo autodidacta, como dios manda claro, muchas de las veces llegamos al punto en el que tenemos tantas maneras de hacer una misma cosa que empezamos a hacer código [espagueti][1]{:target="_blank"}.

Aquí es ese momento cuando deberíamos darnos cuenta que necesitamos un patrón de diseño, algo que nos dé una limpia y clara arquitectura para empezar nuestras apps. Dentro de lo que yo entiendo como un patrón de diseño, daré la propia definición como sigue:
*Un Patrón de diseño es una manera abstracta, modular y probada que intenta evitar repetirte en el código ([DRY][2]{:target="_blank"}) y que resuelve problemas comunes..*

Para mí eso enfoca lo que es un patrón de diseño pero aquí les dejo un link para una definición más detallada [Patrones de diseño][3]{:target="_blank"}
es pues una manera estandarizada que por ende está probada y que deberíamos tomar como marco de referencia cuando codeamos en JS, intentare explicar más a detalle dando ejemplos del por qué deberíamos seguir una arquitectura limpia, pero para ser un poco más claro daré antes una pequeña introducción a algunas de las bases de JS

### El Objeto Global window
Window es el objeto global que tenemos por default en interprete de nuestro navegador eso quiere decir que todas las funciones, objetos y variables que creemos serán por default añadidos a window es decir window será el objeto padre de todo lo que definamos en nuestro script, para muestra un ejemplo:

```javascript
    var myName  = 'Andres',
        age     = 22;
    function getMyInfo() {
        return myName + ', ' + age;
    } 

    // sin especeficar el objeto global window
    console.log( myName );
    console.log( age );
    console.log( getMyInfo() );

    //espefificando al objeto global window
    console.log( window.myName );
    console.log( window.age );
    console.log( window.getMyInfo() );
```
Si se dirigen a la consola de su navegador y pegan esto debería imprimir los valores correspondientes de cada propiedad, como se dieron cuenta en las líneas donde se imprime el valor de las variables correspondiente al comentario “sin especificar el objeto global”, da el resultado común que se esperaría, y en el caso de las líneas correspondiente al comentario "especificando al objeto global window"  __!hace exactamente lo mismo!__ esto se debe a que una vez creadas las variables deben forzosamente tener como padre al objeto global window y ahí son agregadas es por ello que podemos acceder a ellas con la notación de punto *__a window también se le conoce como el contexto general__*

### Inconvenientes con el objeto global window
Muchas de las ocaciones cuando somos primerisos en el mundo de js y comenzamos a codear no sabemos que agregamos al contexto global las propiedades que definimos globalmente en el script, a continuacion listare algunas de las concecuencias que tiene esto:

* [Incongruencia en nuestro codigo](#incongruencia)
* El rango de identificadores para nuestras propiedades globales queda limitado 
* Dificil depuracion

### <a name="incongruencia">Incongruencia en nuestro codigo</a>  
Para muestra un ejemplo:

```javascript
  // hace una suma de dos numero
    function doSuma( a, b ){
        return a + b;
    }
    console.log( doSuma( 4, 5 ) ); // 0
    /*
     despues de unas 10,000 lineas de codigo...
    */
   // hace una suma de tres numeros
   function doSuma( a, b, c ) {
        if( c === undefined )
            return 0;
        return a + b + c;
   }
   console.log( doSuma( 4, 5 ) ); // 0
```

Que pasa con este codigo, se definen dos funciones de suma, la primera recibe dos parametros y la segunda tres, ambas funciones suman cada parametro que le fue definido en cada funcion y ambas se mandan llamar con los mismos valores pasados como argumentos, el resultado en ambos llamados es el mismo pero no pareciera ser el esperado.

Tal vez estan pensando pero oye como se te ocurre definir dos funciones con el mismo nombre es obvio que eso esta mal, y eso es relativamente correcto, pero para intentar explicar esto dare un poco de contexto acerca de un ejemplo real, digamos que tienes un escript y este lleve muchas lineas de codigo o incluso tu tengas que trabajar con el script de otras personas y en este hayan sido definidas todas las propiedades globales en el contexto global window, puede ocurrir que tu definas una funcion con un identificador igual a una que ya exista y esto proboque como en el ejemplo de arriba una incronguencia en el codigo.

Claro que podras pensar pues doy ctrl + f y busco si ya existe ese identificador, pero para evitarnos siempre estar haciendo esto y dejar de vivir con el miedo de si ya existe ese identificador, Usar un patron de diseño nos puede ahorrar mucho tiempo de desarrollo y una manera practica y estandarizada de hacer nuestro codigo mas limpio, modular y facil de leer

### Funcion Anonima Interna Autoejecutable, Por que no un nombre mas largo..
```javascript
    (function(){
        //tu scope queda protejido
        //aqui tu codigo...
    })();
```
En otra entrada del blog hare una introducciona este patron de diseño en JS pero para el tema que abordamos en esta entrada bastara con solo decir que todo lo que pongan dentro de este patron no se agregara al objeto global window y esa seria una forma de abordar el problema planteado un poco mas [arriba](#incongruencia).

Ejemplo aplicable

```javascript
    (function(){
        var myName  = 'Andres',
            age     = 22;
        function getMyInfo() {
            return myName + ', ' + age;
        } 

        console.log( myName ); // Andres
        console.log( age );  // 22
        console.log( getMyInfo() ); // Andres, 22
    })();

    //espefificando al objeto global window
        console.log( window.myName ); // undefined
        console.log( window.age ); // undefined
        console.log( window.getMyInfo() ); //window.getMyInfo is not a function
```
Para finalizar como se puede ver, al imprimir los valores de cada propiedad dentro de la function anonima interna autoejecutable, los resultados son los ersperados, pero fuera de esta al intentar imprimir sus valores nos arroja que estan indefinidos y en una ultima instancia, que incluso la funcion getMyInfo no existe, esto gracias a nuestro patron que ***se encarga de protejer nuestro [scope][4]{:target="_blank"} es decir el alcance que tienen nuestras variables en nuestro codigo, de esa forma nunca se agregaran al objeto global window***.

Este patron es muy util a la hora de cuidar el scope de nuestras propiedades y nos evita el estar agregando cada propiedad que definamos al scope global window, bueno espero que les sea de utilidad esta entrada, y ha codear se ha dicho..


[1]: https://es.wikipedia.org/wiki/C%C3%B3digo_espagueti
[2]: https://es.wikipedia.org/wiki/No_te_repitas
[3]: https://es.wikipedia.org/wiki/Patr%C3%B3n_de_dise%C3%B1o
[4]: https://es.wikipedia.org/wiki/%C3%81mbito_(programaci%C3%B3n)
