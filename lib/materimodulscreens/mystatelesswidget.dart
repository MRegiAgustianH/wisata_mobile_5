import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ini Stateless Widget",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "ini Stateless Widget",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/cute.png',
            width: 150,
            height: 150,
          ),
          Text(
            'ELZIO LIAT MAMAH',
            style: TextStyle(
                fontSize: 38,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ]),
      ),
    );
  }
}
