import 'package:flutter/material.dart';

class AreaCuadrado extends StatefulWidget {
  AreaCuadrado({Key? key}) : super(key: key);

  @override
  _AreaCuadradoState createState() => _AreaCuadradoState();
}

class _AreaCuadradoState extends State<AreaCuadrado> {
  double area = 0;
  double lado1 = 0;
  double lado2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area Cuadrado"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: 'Ingrece el primer lado',
                labelText: 'Lado 1',
              ),
              onChanged: (valor) {
                if (valor.isEmpty || double.tryParse(valor) == null) {
                  area = 0;
                  return;
                }
                setState(() {
                  lado1 = double.parse(valor);
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
                hintText: 'Ingrece el segundo lado',
                labelText: 'Lado 2',
              ),
              onChanged: (valor) {
                if (valor.isEmpty || double.tryParse(valor) == null) {
                  area = 0;
                  return;
                }
                setState(() {
                  lado2 = double.parse(valor);
                });
                area = lado1 * lado2;
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
