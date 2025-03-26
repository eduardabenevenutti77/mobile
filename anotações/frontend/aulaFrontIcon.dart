import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // cria o layout onde colocaremos os elementos
        appBar: AppBar(
          // chamando a função de botão
          leading: IconButton(
            // pegando um icon | color: Colors.white -> mudando a cor do icon
            icon: Icon(Icons.attractions, color: Colors.white),
            onPressed: () {
              // ação que ocorre quando o botão é pressionado
              print("você pressionou o botão!");
            },
          ),
          // importa a navBar do MaterialApp
          title: Text(
            "Aplicativo",
            style: TextStyle(
              color: Colors.white, // cor do texto
              fontSize: 22, // tamanho da fonte
              fontWeight: FontWeight.bold, // peso da fonte
              fontFamily: 'Roboto', // fonte
            ),
          ),
          centerTitle: true, //alinha ao centro do AppBar
          backgroundColor: Colors.pinkAccent, // cor da navbar
        ),
        // mudando o estilo do child
        body: Container(
          color: Colors.transparent,
          height: 150.0,
          width: 150.0,
          // child: Icon(Icons.ramen_dining, color: Colors.blueGrey, size: 44.0),
          child: Center(
            child: Row(
              // o spaceEvely adiciona espaço entre os elementos
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //  Icon(Icons.ramen_dining, color: Colors.blueGrey, size: 44.0),
                //  Text("Home", style:TextStyle(color:Colors.pink)),
                Container(height: 20.0, width: 20.0, color: Colors.pinkAccent),
                Container(height: 20.0, width: 20.0, color: Colors.pink),
                Container(height: 20.0, width: 20.0, color: Colors.pinkAccent),
                Container(height: 20.0, width: 20.0, color: Colors.pink),
                Container(height: 20.0, width: 20.0, color: Colors.pinkAccent),
              ],
            ),
          ),
        ),
        // construindo o rodapé
        // chamando o elemento de rodapé
        bottomNavigationBar: BottomAppBar(
          child: Row(
            // alinha os elementos ao centro
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // informações que vão dentro do rodapé
              Text(
                "Tudo tem o seu tempo determinado, e há tempo para todo propósito debaixo do céu",
                style: TextStyle(color: Colors.black26, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// cada widget pode apenas ter 1 child
// no children dentro do [] podemos colocar vários elementos