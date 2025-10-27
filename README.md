[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/XRrsqZ_g)
# empty

// Exercici 1.1 Hello World

Es un body con un child que tiene un texto en el que pone Hello World!

// Exercici 1.2 Welcome

En el primer ejercicio, hemos construido una aplicación Flutter usando MaterialApp como contenedor principal y Scaffold para la estructura básica de la pantalla. Dentro del cuerpo (body) utilizamos un Center que contiene un Column con mainAxisSize: MainAxisSize.min para centrar verticalmente los elementos. En la columna mostramos dos Text widgets con un espacio entre ellos mediante SizedBox y, debajo, dos botones (ElevatedButton) con onPressed: null, lo que significa que de momento están deshabilitados. Este ejercicio nos permite practicar la organización de widgets verticales, el control de márgenes y la creación de interfaces básicas en Flutter.

// Exercici 1.3 Resource

Al igual que en el ejercicio anterior , también usamos MaterialApp y Scaffold, pero esta vez colocamos un Padding para separar los elementos de los bordes y un Align con alignment: Alignment.topLeft para situar los widgets en la esquina superior izquierda. Dentro del Column colocamos un Text seguido de un Image cargado mediante Asset Image. Para que Flutter reconozca la imagen, configuramos la sección assets: en pubspec.yaml, indicando la ruta de la carpeta que contiene los recursos. Este ejercicio nos enseña cómo manejar recursos externos y controlar la alineación y disposición de los widgets en Flutter.

// Exercici 1.4 Contact

En el exercici 1.4, crearem una clase nova anomenada Contact, la qual te els atributs fullName, email i phone amb un constructor.
Crearem un contacte amb les dades del nom, l’email i el teléfon corresponents a la senyora de la imatge anterior. Executem runApp passant per parametre contact.
Mostrem un CircleAvatar que conté una imatge 'imagen.png' amb el radi de 60, el nom en un text amb un fontsize de 30, i un card amb diferents Rows que son tant el mail com el teléfon.

// Exercici 1.5 Message List

El código comienza definiendo un modelo simple Message para almacenar autor y contenido, luego arranca la aplicación con runApp usando ConceptApp como widget raíz. Dentro de ConceptApp, se configura el tema y se asigna MessagePage como pantalla principal. En MessagePage, al construir la interfaz, se define primero una lista de nombres y un texto fijo, luego se genera dinámicamente una lista de 100 mensajes aleatorios combinando un nombre elegido al azar con el texto mediante Random y List.generate. A continuación, se construye un Scaffold que contiene un ListView.builder para iterar sobre esa lista y crear una Card para cada mensaje, mostrando el autor y el contenido. Finalmente, se añade un FloatingActionButton que actualmente no realiza ninguna acción, completando la estructura interactiva de la interfaz.

// Exercici 1.6 App bar

Es el mismo código que el anterior, pero incluyendo debajo un bottomNavigationBar con 3 elementos: Uno de "Mensajes", uno de "Contactos", y uno de "Ajustes". Cada uno con surespectivo icono.