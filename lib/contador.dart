// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyContador extends StatefulWidget {
  const MyContador({super.key});

  @override
  State<MyContador> createState() => _MyContadorState();
}

class _MyContadorState extends State<MyContador> {

  int count = 0;

  void somar(){
    count++;
  }

  void subtrair(){
    count--;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador usando Stateful Widget', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 150,),
        Image.asset('assets/images/contador.png'),
        SizedBox(height: 20,),
        Text('Contador automático', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            width: 70, // Largura do botão
            height: 70, // Altura do botão
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 80, 80), // Cor de fundo do botão
              shape: BoxShape.circle, // Forma circular
            ),
            child: ElevatedButton(
              onPressed: () {
                subtrair();
                setState(() {
                });
              },
              child: Icon(
                Icons.remove,
                color: Colors.white, // Cor do ícone
              ), // Ícone dentro do botão
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Cor de fundo transparente
                shape: CircleBorder(), // Bordas circulares
                elevation: 5, // Remove a elevação do botão
              ),
            ),
          ),
        SizedBox(width: 10,),
            Container(
            width: 70, // Largura do círculo
            height: 70, // Altura do círculo
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Forma circular
              color: Color.fromARGB(255, 97, 174, 236), // Cor de fundo do círculo
            ),
            child: Center(
              child: Text(
                "$count",
                style: TextStyle(
                  color: Colors.white, // Cor do texto
                  fontSize: 30, // Tamanho do texto
                ),
              ),
            ),
        ),
        SizedBox(width: 10,),
        Container(
            width: 70, // Largura do botão
            height: 70, // Altura do botão
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 111, 179, 80), // Cor de fundo do botão
              shape: BoxShape.circle, // Forma circular
            ),
            child: ElevatedButton(
              onPressed: () {
                somar();
                setState(() {
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.white, // Cor do ícone
              ), // Ícone dentro do botão
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Cor de fundo transparente
                shape: CircleBorder(), // Bordas circulares
                elevation: 5, // Remove a elevação do botão
              ),
            ),
          ),
      ]),
      SizedBox(height: 30,),
      Text('Valor do contador: ' + "$count", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20), )
      ]),)
    );
  }
}