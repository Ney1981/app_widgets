import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi Aplicación",
      home: inicio(),
    );
  }
}

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inteligencia Artificial"),
      ),
      backgroundColor: Color.fromARGB(255, 204, 234, 249),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30.0),
            child: const Image(
              image: NetworkImage(
                  'https://mundopositor.info/wp-content/uploads/2023/10/inteligencia-artificial.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  "¿Qué es inteligencia artificial?",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "La Inteligencia Artificial (IA) es la combinación de algoritmos planteados con el propósito de crear máquinas que presenten las mismas capacidades que el ser humano. Una tecnología que todavía nos resulta lejana y misteriosa, pero que desde hace unos años está presente en nuestro día a día a todas horas.",
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  textAlign: TextAlign.justify,
                ),
                FlutterLogo(
                  size: 150,
                  style: FlutterLogoStyle.horizontal,
                  curve: Curves.bounceInOut,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_boton("Entrar")],
          )
        ],
      ),
    );
  }
}

Widget _boton(String nombre) {
  return InkWell(
    child: const SizedBox(
      width: 200,
      height: 50,
      child: Card(
        color: Color.fromARGB(255, 12, 165, 235),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Entrar",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    ),
    onTap: () {
      print("click $nombre");
    },
  );
}
