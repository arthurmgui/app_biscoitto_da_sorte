import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: homePage()));
}

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
                backgroundImage: AssetImage("images/biscoito_inteiro.png"),
                radius: 80,
                backgroundColor: Colors.white,
              ),
              Text(
                "Clique no botão para abrir o biscoito",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Abrir biscoito"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber, onPrimary: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
