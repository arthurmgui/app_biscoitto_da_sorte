import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: homePage()));
}

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //Criando Array com frases
  var listFrases = [
    "O arrependimento diário é o caminho para a pureza.",
    " a pureza traz poder. A pureza pessoal pode fazer de nós ferramentas poderosas nas mãos de Deus.",
    "Jesus sofreu profundamente porque nos ama profundamente!",
    "Ele quer que nos arrependamos e nos convertamos, para poder curar-nos mais plenamente."
  ];

  // Armazenando caminho das imagens
  var imgBiscoito = "images/biscoito_inteiro.png";

  //Frase da sorte
  var fraseSorte = "Clique no botão para abrir o biscoito";

  //botão de quebrar o biscoito
  var btnBiscoito = "Abrir biscoito";

//Método que quebra o biscoito
  void quebrarBiscoito() {
    var numero = Random().nextInt(listFrases.length);
    if (btnBiscoito == "Abrir biscoito") {
      setState(() {
        imgBiscoito = "images/biscoito_quebrado.png";
        fraseSorte = listFrases[numero];
        btnBiscoito = "pegar outro biscoito";
      });
    } else {
      setState(() {
        imgBiscoito = "images/biscoito_inteiro.png";
        fraseSorte = "Clique no botão para abrir o biscoito";
        btnBiscoito = "Abrir biscoito";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscoito da Sorte!"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imgBiscoito),
                radius: 80,
                backgroundColor: Colors.white,
              ),
              Text(
                fraseSorte,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'Pacifico'),
              ),
              ElevatedButton(
                  onPressed: quebrarBiscoito,
                  child: Text(btnBiscoito),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber, onPrimary: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
