import 'package:flutter/material.dart';

class AreaTriangulo extends StatefulWidget {
  AreaTriangulo({Key? key}) : super(key: key);

  @override
  _AreaTrianguloState createState() => _AreaTrianguloState();
}

class _AreaTrianguloState extends State<AreaTriangulo> {
  double base = 0;
  double area = 0;
  double altura = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area Triangulo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Ingrece la base',
                labelText: 'Base',
              ),
              onChanged: (valor) {
                if (valor.isEmpty || double.tryParse(valor) == null) {
                  base = 0;
                  return;
                }
                setState(() {
                  base = double.parse(valor);
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Ingrece altura',
                labelText: 'Altura',
              ),
              onChanged: (valor) {
                if (valor.isEmpty || double.tryParse(valor) == null) {
                  area = 0;
                  return;
                }
                setState(() {
                  altura = double.parse(valor);
                });
                area = base * altura / 2;
              },
            ),
            Divider(),
            Text(
              "El resultado es: $area",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
