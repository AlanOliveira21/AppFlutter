import 'package:flutter/material.dart';

void main(){
  
  
  runApp(MeuApp());    
}

class MeuApp extends StatelessWidget{
  const MeuApp({super.key});
  
  @override
  Widget build(BuildContext context){
    const double nota = 5;
    const String nome = "Thomas";
    final String resultado;
    
    if (nota >= 7){
      resultado = 'Aprovado';
    }else{
      resultado = 'Reprovado';
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,//remove o debug a direita
        home: Scaffold(
          body: Center(
            child: Text(
              '$nome tirou $nota',
              style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: nota >= 7 ? Colors.green : Colors.red,
              ),
            ),
         ),
       ),
    );
  }
}
