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
        body: Center(child: Text("Construindo o meu primeiro app em flutter <3", style: TextStyle(
          // para usar rgb
          color: Colors.pink,
        //color: const Color.fromARGB(255, 0, 131, 0),
          fontSize: 22,
        ))),
        // construindo o rodapé
        // chamando o elemento de rodapé
        bottomNavigationBar: BottomAppBar(
          child: Row(
            // alinha os elementos ao centro
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // informações que vão dentro do rodapé
              Text("rodapé", style: TextStyle(
              color: Colors.black26,
                fontSize: 22,
              ), ),
            ],
          ),
        ),
        
      ),
    ),
  );
}
