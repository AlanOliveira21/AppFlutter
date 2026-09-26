import 'package:flutter/material.dart';

void main() {
  
  List<String> nomes = ["Alan", "Bruna", "Gustavo","Jesse", "Thomas"];
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(nomes[0]) //retorna o nome pelo indice
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
  List<String> nomes = ["Alan", "Bruna", "Gustavo","Jesse", "Thomas"];
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Quantidade: ${nomes.length}') //retorna a quantidade na lista
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
  List<String> nomes = ["Alan", "Bruna", "Gustavo","Jesse", "Thomas"];
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Text(nomes[0]),
            Text(nomes[1]),
            Text(nomes[2]),
            Text(nomes[3]),
            Text(nomes[4])
        ])
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
  Map<String, String> aluno = {
    "nome": "Kevin",
    "curso": "ADS"
  };
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('${aluno['nome']} ${aluno['curso']} ')
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
 String saudacao() {
   return "Olá, turma";
 }
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(saudacao())
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
 String saudacao(String nome) {
   return "Olá, $nome !";
 }
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(saudacao("Alan"))
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

  int dobro(numero) => numero * 2;

void main() {
  
  int resultado = dobro(2);
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Dobro: $resultado')
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

  class Aluno{
    String nome = "Bruna";
  }

void main() {
  
  Aluno aluno = Aluno();
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(aluno.nome)
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

  class Aluno{
    String nome;
    
    Aluno(this.nome);
  }

void main() {
  
  Aluno aluno = Aluno("Bruna");
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(aluno.nome)
        )
      )
    )
  );
}


import 'package:flutter/material.dart';

  class Calculadora{
    
    int somar(int a , int b){
      return a + b;
    }
  }

void main() {
  
  Calculadora calculadora = Calculadora();
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Resultado: ${calculadora.somar(450, 540)}')
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
  String? apelido;
  
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(apelido ?? 'Sem apelido')
        )
      )
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  
  runApp(const MaterialApp(home: Contador()));
}

 class Contador extends StatefulWidget{
   const Contador({super.key});
   
   @override
   State<Contador> createState() => _ContadorState();
   
 }

class _ContadorState extends State<Contador>{
  int numero = 0;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
      child: Text('$numero')
      ),
      floatingActionButton: FloatingActionButton(
      onPressed :(){
        setState((){
          numero++;
        });
      },
        child: const Icon(Icons.add)
      )
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  
  runApp(const MaterialApp(home: Tela()));
}

 class Tela extends StatefulWidget{
   const Tela({super.key});
   
   @override
   State<Tela> createState() => _TelaState();
   
 }

class _TelaState extends State<Tela>{
  bool ligado = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text(ligado ? "Ligado" :"Desligado")
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ligado ? Colors.green : Colors.red,
        foregroundColor: Colors.white,
      onPressed :(){
        setState((){
          ligado = !ligado;
      });
      },
        child: Icon(Icons.power_settings_new)
        )
    );
  }
}
