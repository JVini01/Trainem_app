import 'package:flutter/material.dart';
import 'package:trainenapp/telaeditais.dart';
import 'package:trainenapp/telaprovas.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Pacote padrão app
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 180,
          title:
            Image.asset('img/trainem.jpg', height: 120,),
            centerTitle: true,
        ),
        //Corpo app
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //First button
              ElevatedButton(
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Telaeditais()),
                );
              }, child: const Text('Editais'),),
              //Espaço entre os buttons
              const SizedBox(
                height: 20,
              ),
              //Espaço entre os buttons
              //Second button
              ElevatedButton(onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const Telaprovas()),
                );
              }, child: const Text('Provas')),
            ],
          ),
        ),
      ),
    );
  }
}