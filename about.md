---
layout: page
title: Algo Cursi sobre mi
permalink: /me/
published: true
---

<style>
#tecs
{
    border : 1px solid rgba( 0, 0, 0, .3 );
    padding : 30px;
    border-radius : 3px;
    box-shadow : 0px 0px 50px rgba( 0, 100, 250, .8 ) inset;
    background-color : rgba( 250, 250, 250, 1 );
}

#tecs span
{
  display: inline-block;
  margin : 18px;
  transition : all .6s ease;
  cursor : pointer;
  text-align: center;
}

#tecs span:hover
{
  transform : rotate( 2turn );
}

#tblTecs tr td:first-child
{
  border-radius : 1px;
  position: relative;
  display: inline-block;
  width : 350px;
  border-top : none;
  padding : 10px;
  box-shadow: 0px 0px 5px rgba( 0, 90, 200, .8 ) inset;
  border : 1px solid rgba( 0, 90, 200, .8 );
  margin : 2px;
  cursor : pointer;
  transition : all .8s ease;
}

#tblTecs tr td:first-child:hover, #tblTecs tr td.active:first-child
{
  background-color : rgba( 0, 90, 200, .8 );
  color : white;
}

#tblTecs tr td
{
  padding : 0px 8px;
}

#tblTecs tr td.empty, #tblTecs tr td.empty:hover
{
  cursor : inherit;
  border : none;
  box-shadow: none;
  background-color : initial;
}

#contentDom
{
  box-shadow : 0px 0px 1px rgba( 0, 0, 0, .5 ) inset;
  padding : 4px;
}

#contentDom .dom-block
{
  margin : 0 2px;
  display: inline-block;
  padding : 6px;
}

#contentDom .dom:first-child .dom-block, .dom-bas
{
  border : 1px solid rgba( 200, 90, 0, .7 );
  box-shadow : 0px 0px 2px rgba( 200, 90, 0, .7 ) inset;
  cursor : pointer;
  transition : all .7s ease;
}

#contentDom .dom:nth-last-child(2) .dom-block, .dom-med
{
  border : 1px solid rgba( 0, 200, 90, .7 );
  box-shadow : 0px 0px 2px rgba( 0, 200, 90, .7 ) inset;
  cursor : pointer;
  transition : all .7s ease;
}

#contentDom .dom:last-child .dom-block, .dom-ava
{
  border : 1px solid rgba( 0, 90, 255, .7 );
  box-shadow : 0px 0px 2px rgba( 0, 90, 255, .7 ) inset;
  cursor : pointer;
  transition : all .7s ease;
}

/*Hover*/
.dom-bas:hover, .dom-bas.active, #contentDom .dom:first-child .active
{
  box-shadow : 0px 0px 50px rgba( 200, 90, 0, .7 ) inset;
}

.dom-med:hover, .dom-med.active, #contentDom .dom:nth-last-child(2) .active
{
  box-shadow : 0px 0px 50px rgba( 0, 200, 90, .7 ) inset;
}

.dom-ava:hover, .dom-ava.active,  #contentDom .dom:last-child .active
{
  box-shadow : 0px 0px 50px rgba( 0, 90, 255, .7 ) inset;
}


body
{
  background-color : rgba( 255, 255, 255, .8) ;  
}

.wrapper-masthead, .wrapper-footer
{
  background-color : rgba( 0, 0, 0, .1 );
}

#main
{
  box-shadow: none;
}

</style>

<script>
    (function()
        {
            window.addEventListener( 'load', init, false );

            /*function categoryClean()
            {
              ([]).forEach.call( document.querySelectorAll( '#tblTecs tr td:first-child' ), function( category )
              {
                  category.classList.remove( 'active' );
              });
            }*/

            function activeCategory( dom, tec )
            {
              category = tec.parentNode.firstChild;
              if( category.textContent.trim() === '' )
              {
                var rows  = tec.parentNode.parentNode.rows,
                    index = ([]).indexOf.call( rows, tec.parentNode );

                category = rows[ index - 1 ].cells[ 0 ];
              }
              if( dom.classList.contains( 'active' ) )
                category.classList.add( 'active' );
              else
                category.classList.remove( 'active' );
            }

            function init()
            {
                ([]).forEach.call( document.querySelectorAll( '.dom-block' ), function( dom )
                {
                    dom.addEventListener( 'click', function( e )
                    {
                        //categoryClean();
                        dom.classList.toggle( 'active' );
                        ([]).forEach.call( document.querySelectorAll( '.dom-' + dom.parentNode.id ), function( tec ) 
                            {
                                tec.classList.toggle( 'active' );
                                activeCategory( dom, tec );
                            } );
                    }, 
                      false );
                });
            }
        })();
</script>

*I am an apassioned for the web technologies, like HTML 5, CSS3 but in a special case JavaScript, i love the frameworks because i think that get the best of you.*


### Tecnologias con las que actualmente trabajo
<section id="tecs">
    <span title="click para ver mis proyectos en HTML5"><a href="https://github.com/JoinBugs/VLSMJS"><i style="font-size : 5em;color : rgb(234, 61, 19);" class="fa fa-html5" aria-hidden="true"></i></a></span>
    <span title="Click para ver mis proyectos en JavaScript"><a href="https://github.com/JoinBugs/GridJS"><i style="font-size : 5em;color : rgb(245, 174, 9);" class="icon-javascript"></i></a></span>
    <span title="Click para ver mis proyectos en CSS"><a href="https://github.com/JoinBugs/menuCreatorJS"><i style="font-size : 5em;color : rgb(9, 178, 245);" class="fa fa-css3" aria-hidden="true"></i></a></span>
    <span title="Click para ver mis proyectos en Github"><a href="https://github.com/JoinBugs"><i style="font-size : 5em;color : rgb(72, 65, 63);" class="fa fa-github" aria-hidden="true"></i></a></span>
    <span title="Click para ver mis proyectos en Git"><a href="https://github.com/JoinBugs/LEARNGIT"><i style="font-size : 5em;color : rgb(234, 61, 19);" class="fa fa-git" aria-hidden="true"></i></a></span>
    <span title="Click para ver mis proyectos en Laravel5"><a href="https://github.com/JoinBugs/demoLa5ApiYou"><i style="font-size : 5em;color : rgb(234, 61, 19);" class="icon-laravel"></i></a></span>
    <span title="Click para ver mis proyectos en Java"><a href="https://github.com/JoinBugs/Java-Project-Electronics-Store"><i style="font-size : 5em;color : rgb(83, 131, 222);" class="icon-java"></i></a></span>
    <span title="Click para ver mis proyectos en Python"><a href="https://github.com/JoinBugs/LearnPython"><i style="font-size : 5em;color : rgb(25, 148, 35);" class="icon-python"></i></a></span>
    <span title="Click para ver mis proyectos en MySQL"><a href="https://github.com/JoinBugs/Java-Project-Electronics-Store/tree/master/DB/Scripts"><i style="font-size : 5em;color : rgb(19, 163, 234);" class="icon-mysql"></i></a></span>
    <span title="Click para ver mis proyectos en C#"><a href="http://sicenet.itsur.edu.mx:8088/"><i style="font-size : 5em;color : rgb(54, 132, 23);" class="icon-csharp"></i></a></span>
</section>
---

### He aquí un poquito de lo que conosco
<table id="tblTecs">
    <tbody>
        <tr><td>Sistemas Operativos</td><td class="dom-med">Windows</td><td class="dom-bas">GNU-Linux/Deepin</td></tr>
        <tr><td>Ofimática nivel medio</td><td class="dom-med">Word</td><td class="dom-med">PowerPoint</td> <td class="dom-med">Excel</td></tr>
        <tr><td>Programación Web</td><td class="dom-ava">JavaScript</td></tr>
        <tr><td>Programación General</td><td class="dom-med">Python</td><td class="dom-med">C#</td><td class="dom-med">Java</td><td class="dom-bas">Android</td></tr>
        <tr><td>Conocimiento en Tecnologías</td><td class="dom-ava">HTML5</td><td class="dom-med">CSS3</td><td class="dom-ava">Ajax</td><td class="dom-ava">DOM</td><td class="dom-ava">JSON</td><td class="dom-med">WebServices</td></tr>
        <tr><td class="empty"></td><td class="dom-med">ASP.NET</td><td class="dom-med">Windows Form</td><td class="dom-bas">Django</td><td class="dom-bas">JSP</td><td class="dom-med">MySQL</td><td class="dom-ava">BATCH</td></tr>
        <tr><td>Arquitecturas o Estilos de Arquitectura</td><td class="dom-ava">MVC</td><td class="dom-ava">DAO</td><td class="dom-med">REST</td><td class="dom-med">Híbridos</td></tr>
        <tr><td>Herramientas</td><td class="dom-med">Git</td><td class="dom-med">Mockup Builder</td></tr>
        <tr><td>Nivel de inglés</td><td class="dom-med">Intermedio</td></tr>
    </tbody>
</table>

#### Dominio
<div id="contentDom">
    <div id="bas" class="dom"> <span class="dom-block"></span> <span class="dom-text">Basico</span></div>
    <div id="med" class="dom"> <span class="dom-block"></span> <span class="dom-text">Intermedio</span></div>
    <div id="ava" class="dom"> <span class="dom-block"></span> <span class="dom-text">Avanzado</span></div>
</div>

---

### Aqui algunos de mis logros

[![Microsoft Certified Professional][2]][1]{:target="_blank"}

---

[Por si las moscas, aqui mi CV.][3]

---

### Contactame

<form action="https://formspree.io/buggerdeveloper@gmail.com"
      method="POST">
    <input class="form-control" type="text" name="name" placeholder="Aqui tu nombre, porfavor" > <br/>
    <input class="form-control"  type="email" name="_replyto" placeholder="Seria Genial, Si pudieras regalarme tu email aqui"> <br/>
    <label for="asunto">  <strong> En que puedo ayudarte? </strong> </label>
    <textarea placeholder="Adelante, porfavor comentame..."  class="form-control" name="asunto" id="asunto" cols="30" rows="10"></textarea> <br/>
    <input class="btn btn-info"  type="submit" value="Enviar">
</form>

[1]: ../docs/certificate.pdf
[2]: ../images/MCP.png
[3]: ../docs/CVAndresCornejoCruz.doc