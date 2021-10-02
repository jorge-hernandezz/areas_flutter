import 'package:flutter/material.dart';
import 'package:tarea_areas/areaCuadrado.dart';
import 'package:tarea_areas/areaCirculo.dart';
import 'package:tarea_areas/areaTriangulo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GradosPage(),
    );
  }
}

class GradosPage extends StatefulWidget {
  GradosPage({Key? key}) : super(key: key);

  @override
  _GradosPageState createState() => _GradosPageState();
}

class _GradosPageState extends State<GradosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Areas"),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.crop_3_2),
                title: Text("Cuadrado"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AreaCuadrado()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text("Circulo"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AreaCirculo()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.landscape),
                title: Text("Triangulo"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AreaTriangulo()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
