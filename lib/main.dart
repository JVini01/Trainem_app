import 'package:flutter/material.dart';
import 'package:trainenapp/telaeditais.dart';
import 'package:trainenapp/telaprovas.dart';

void main() {
  runApp(const MaterialApp(
    title: 'App',
    home: MainApp(),
  ));
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
              SizedBox( height: 50, //Altura e largura do botão
                        width: 150,
                      child: ElevatedButton(
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom( //Estilo do botão
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 255, 8, 0), // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(fontSize: 15)), // Tamanho da fonte
                  // Define a ação ao pressionar o botão
                  onPressed: () {
                    // Navega para a página MainApp
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Telaeditais()),
                    );
                  },
                  // Texto do botão
                  child: const Text("Editais"),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(height: 50, //Altura e largura do botão
                        width: 150,
                      child: ElevatedButton(
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom( //Estilo do botão
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 255, 8, 0), // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(fontSize: 15)), // Tamanho da fonte
                  // Define a ação ao pressionar o botão
                  onPressed: () {
                    // Navega para a página MainApp
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Telaprovas()),
                    );
                  },
                  // Texto do botão
                  child: const Text("Provas"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}