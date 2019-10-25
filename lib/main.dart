import 'package:flutter/material.dart';

main() => runApp(Controles());

class Controles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }

}

class Estado extends State {

  final txtControlNombre = TextEditingController();
  String nombre;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controles'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Escribe tu nombre',
                labelText: 'Nombre'
              ),
              controller: txtControlNombre,   // <--- Enlace con la variable y controller
            ),
            RaisedButton(
              child: Text('Enviar'),
              onPressed: (){
                nombre = txtControlNombre.text;
                print('Hola amigo $nombre');
              },
            )
          ],
        ),
      ),
    );
  }
}