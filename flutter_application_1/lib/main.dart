import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primer app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Octavo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(children: [
        const Text("Latacunga",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Image.network(
          'https://www.latacunga.com/wp-content/uploads/2015/03/vicente-leon-parque-2013.jpg',
        ),
        const Text(
            "Latacunga, también conocida como San Vicente Mártir de Latacunga, es una ciudad ecuatoriana; cabecera cantonal del Cantón Latacunga y capital de la Provincia de Cotopaxi, así como la urbe más grande y poblada de la misma. Se localiza al centro-norte de la Región interandina del Ecuador, en la hoya del río Patate, atravesada por los ríos Cutuchi y Pumacunchi, a una altitud de 2770 m s. n. m. y con un clima frío andino de 13,6 °C en promedio.",
            style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
