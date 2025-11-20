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

//Exercici 2.1


En esta aplicación hemos creado una interfaz sencilla que muestra un mensaje inicial “Good ?!” y permite modificarlo mediante dos botones. Implementamos un StatefulWidget para poder gestionar cambios en pantalla y utilizamos dos funciones que actualizan el estado con setState, de manera que al pulsar Morning el mensaje pasa a ser “Good morning” y al pulsar Night se convierte en “Good night”. Con esta aplicación mostramos cómo gestionamos el estado y la interacción del usuario dentro de Flutter.


//Exercici 2.2

En esta aplicación hemos creado un sencillo contador interactivo que nos permite incrementar y decrementar un valor mostrado en pantalla. A través de una interfaz limpia y funcional, podemos ver cómo el número cambia al pulsar los botones correspondientes, lo que nos brinda una experiencia dinámica e intuitiva. Con este ejercicio, hemos podido poner en práctica conceptos fundamentales de Flutter, como la gestión del estado, el uso de widgets como Text y ElevatedButton, y la construcción de una interfaz organizada con Column y Padding. La aplicación, aunque sencilla, nos permite entender de manera práctica cómo interactuar con la lógica interna y reflejar cambios en la interfaz de usuario en tiempo real.




//Exercici 2.3

En esta aplicación hemos desarrollado un contador de clics más avanzado que nos permite llevar un registro tanto del total acumulado como de los clics parciales desde la última vez que se reinició. A través de una interfaz sencilla, podemos pulsar el botón “CLICK” para incrementar ambos contadores y observar cómo se actualizan en tiempo real, o usar el botón “RESET” para reiniciar únicamente el contador parcial. Con este ejercicio hemos podido experimentar con la gestión de múltiples variables de estado y reforzar nuestra comprensión sobre cómo reflejar cambios de manera inmediata en la interfaz, creando una experiencia interactiva y clara para el usuario.


//Exercici 2.4


En esta aplicación hemos creado un simulador de dados interactivo que nos permite tirar dos dados y observar los resultados de manera visual y divertida. Cada vez que pulsamos el botón “ROLL THE DICE”, los dados se actualizan aleatoriamente y podemos ver cómo cambian las imágenes correspondientes. Además, hemos añadido un detalle especial: si ambos dados muestran un seis, aparece un mensaje de “JACKPOT!”, lo que añade un toque de emoción al juego. Con este ejercicio hemos practicado la manipulación de imágenes, el uso de la generación aleatoria y la gestión del estado en Flutter, creando una experiencia dinámica y atractiva para el usuario.


//Exercici 2.5

En esta aplicación hemos desarrollado una interfaz que nos permite manejar dos contadores independientes de manera simultánea. Cada contador tiene su propio botón, y al pulsarlo podemos ver cómo el número asociado se incrementa en tiempo real, lo que nos permite llevar un registro de dos puntuaciones distintas al mismo tiempo. Este ejercicio nos ha ayudado a profundizar en la gestión de múltiples estados dentro de un mismo widget, a organizar la interfaz utilizando Row y Column, y a crear una experiencia interactiva clara y sencilla para el usuario, donde cada acción produce un cambio inmediato en la pantalla.

//Exercici 2.6

En esta aplicación hemos creado una lista de la compra interactiva que nos permite agregar productos junto con su cantidad y gestionarlos de manera sencilla. Cada vez que introducimos un producto y su cantidad, podemos añadirlo a la lista y visualizarlo inmediatamente, mientras que también tenemos la opción de eliminar cualquier elemento que ya no necesitemos. Con este ejercicio hemos practicado la manipulación de listas, la gestión del estado en Flutter y el uso de formularios con TextField, logrando una experiencia clara y funcional que simula de manera práctica cómo organizar y controlar nuestros productos de manera eficiente.

//Exercici 2.7

En esta aplicación hemos implementado un contador utilizando el patrón de gestión de estado con Provider, lo que nos permite mantener y actualizar el estado de manera centralizada y reactiva. Al integrar ChangeNotifierProvider, conseguimos que cualquier cambio en el contador se refleje automáticamente en la interfaz, sin necesidad de pasar datos manualmente entre widgets. Con este ejercicio hemos profundizado en arquitecturas más escalables dentro de Flutter, entendiendo cómo separar la lógica de negocio de la interfaz y creando una experiencia consistente y organizada para el usuario.

//Exercici 2.8

