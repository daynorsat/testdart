import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //↑↑↑Es para identificar el widget en el arbol de widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // CONST a veces hay que quitarla o ponerla segun
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true, // para usar material 3 en la app
          colorSchemeSeed: Colors.blue,
          //↑↑↑ La propiedad colorSchemeSeed en ThemeData se
          //utiliza para generar un esquema de color armonioso
          //para toda la aplicación basado en un color semilla específico.
        ),
        //↑↑para quitar el banner de DEBUG
        home: const CounterScreen());
  }
}
/*
La línea const MyApp({super.key}); 
define el constructor de la clase MyApp. 
Es una práctica común en Flutter incluir un parámetro key en el constructor 
de los widgets.
El key es un objeto que identifica de manera única un widget 
en el árbol de widgets. Sirve principalmente para dos propósitos:

Control de estado: 
Cuando un widget se vuelve a construir 
(por ejemplo, debido a un cambio de estado), 
Flutter utiliza la key para determinar si debe reutilizar el widget existente 
o crear uno nuevo. Esto ayuda a preservar el estado interno del widget 
entre reconstrucciones.
Pruebas: 
Las keys también se utilizan en pruebas automatizadas para identificar 
y ubicar widgets específicos en el árbol de widgets, 
lo que facilita la interacción con ellos durante las pruebas.

En tu caso, estás extendiendo StatelessWidget, 
lo que significa que tu widget no tiene estado interno. 
Sin embargo, la inclusión del parámetro key en el constructor 
es una buena práctica, ya que:

Permite que otros widgets superiores en el árbol puedan asignar una key única 
a tu widget, lo que puede ser útil para el control de estado o pruebas 
en esos widgets superiores.
Si decides convertir tu widget en un StatefulWidget en el futuro, 
ya tendrás el parámetro key en el constructor, lo que facilitará la transición.

La línea super.key en el constructor llama al constructor de la clase base StatelessWidget y pasa el valor del parámetro key a esa clase base.
Es importante tener en cuenta que en tu caso específico, donde MyApp es un StatelessWidget sin estado interno, la inclusión de la key no tiene un impacto significativo en el funcionamiento actual de tu aplicación. Sin embargo, es una buena práctica preparar tu código para futuros cambios y facilitar las pruebas automatizadas.
*/
