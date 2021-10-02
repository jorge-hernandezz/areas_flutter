import 'dart:math';

import 'package:flutter/material.dart';

class AreaCirculo extends StatefulWidget {
  AreaCirculo({Key? key}) : super(key: key);

  @override
  _AreaCirculoState createState() => _AreaCirculoState();
}

class _AreaCirculoState extends State<AreaCirculo> {
  double area = 0;
  double radio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area Circulo"),
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
                hintText: 'Ingrece el radio',
                labelText: 'Radio',
              ),
              onChanged: (valor) {
                if (valor.isEmpty || double.tryParse(valor) == null) {
                  area = 0;
                  return;
                }
                setState(() {
                  radio = double.parse(valor);
                });
                area = double.parse(pow(radio, 2).toString()) * pi;
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
