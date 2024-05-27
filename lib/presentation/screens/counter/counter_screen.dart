import 'package:flutter/material.dart';

//teclea stless para crear un stateless

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  //String textoClick = 'Clicks';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        //backgroundColor: Colors.purple,
      ),
      //Scaffold implementa un diseño basico de material
      //crea una nueva pantalla
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //↑↑↑ Esta propiedad controla cómo se alinean los hijos
          //del Column a lo largo del eje principal (vertical
          //en este caso). MainAxisAlignment.center hace que los
          //hijos se centren verticalmente dentro del Column.
          // todos tienen sus hijos?
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              //FontWeight para el grosor
            ), //Hijo 1
            Text(
              //↓↓↓ Repasar ternario
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            ), //Hijo 2
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //clickCounter++;
          setState(() {
            clickCounter++;
            // if (clickCounter == 1) {
            //   textoClick = 'Click';
            // } else {
            //   textoClick = 'Clicks';
            // }
          });
        },
        child: const Icon(Icons.plus_one),
      ),

      //body: Center(child: Text('Counter Screen')),
      //Hay widgets que reciben un solo hijo
      //y algunos reciben multiples (column, row)
    );
  }
}

//NOtas:
//child= un solo hijo
//Children = varios hijos
//La decisión de usar const o no depende
//del tipo de widget y sus propiedades.

/*Usar const cuando:

Widgets sin estado (StatelessWidget): 
Si un widget no tiene estado interno y sus propiedades 
son inmutables, se puede declarar como una constante 
usando const. Esto puede mejorar el rendimiento, ya que 
Flutter puede evitar reconstruir el widget innecesariamente. 
Ejemplos: Text, Icon, Image (con una ruta de imagen constante).
Colecciones inmutables: Si estás pasando una colección 
inmutable (como una List o un Map) como propiedad a un widget, puedes declararla como const para optimizar el rendimiento.
Valores primitivos: Valores primitivos como números, cadenas 
y booleanos que no cambiarán durante la vida útil del widget 
pueden declararse como const.

No usar const cuando:

Widgets con estado (StatefulWidget): 
Los widgets con estado interno no pueden ser declarados 
como constantes, ya que su estado puede cambiar durante su 
iclo de vida. 
Ejemplos: Scaffold, TextField, AnimatedBuilder.
Propiedades mutables: 
Si un widget tiene propiedades que pueden cambiar en tiempo 
de ejecución, no se puede declarar como constante. 
Por ejemplo, un Image con una URL que puede cambiar, o un 
Text que muestra una cadena que se genera dinámicamente.
Funciones o constructores con lógica compleja: 
Si un widget tiene un constructor o funciones que realizan 
cálculos o lógica compleja, no se puede declarar como constante.
Recursos externos: 
Si un widget depende de recursos externos (como archivos de 
imágenes o datos de una API) que pueden cambiar, 
no se puede declarar como constante.*/


/*MainAxisAlignment.start: 
Alinea los hijos en el inicio del eje principal.
MainAxisAlignment.end: 
Alinea los hijos al final del eje principal.
MainAxisAlignment.center: 
Centra los hijos a lo largo del eje principal.
MainAxisAlignment.spaceBetween: 
Distribuye los hijos uniformemente a lo largo del 
eje principal, con el primer hijo al inicio y el 
último al final.
MainAxisAlignment.spaceAround: 
Distribuye los hijos uniformemente a lo largo del 
eje principal, con espacios iguales antes del 
primer hijo y después del último hijo.
MainAxisAlignment.spaceEvenly: 
Distribuye los hijos uniformemente a lo largo del 
eje principal, con espacios iguales entre cada hijo.*/