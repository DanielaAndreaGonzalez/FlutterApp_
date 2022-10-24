import 'package:flutter/material.dart';
import 'package:proyectoone/triangulo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Triangle App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Triangle Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String imagen = "assets/images/interrogante.jpg";
  String resultado = "";
  var txtNumOne = TextEditingController();
  var txtNumTwo = TextEditingController();
  var txtNumThree = TextEditingController();

  void _incrementCounter() {
    setState(() {
      triangulo t = triangulo(int.parse(txtNumOne.text),
          int.parse(txtNumTwo.text), int.parse(txtNumThree.text));
      t.tipoTriangulo();
      resultado = t.tipo;
      imagen = t.img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'TRIANGLES',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: txtNumOne,
                  decoration: const InputDecoration(
                      labelText: 'Lado A',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.square_foot_outlined)),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: txtNumTwo,
                  decoration: const InputDecoration(
                      labelText: 'Lado B',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.square_foot_outlined)),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: txtNumThree,
                  decoration: const InputDecoration(
                      labelText: 'Lado C',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.square_foot_outlined)),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton.icon(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.calculate),
                    label: const Text('Calcular')),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'El triángulo es $resultado',
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child:
                      //Image.network(
                      Image.asset(imagen, width: 200, height: 200),
                  //"https://www.amadeusescuelademusica.es/wp-content/uploads/2019/03/El-piano-648x365.jpg",
                  // width: 100,
                  //height: 100,
                  //),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
