import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetolista/pessoa.dart';
import 'package:projetolista/sextou.dart';

void main() {
  runApp(const MyApp());
}
 
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Lita para Widget",
      home: Tela1(),
    );
  }
}

class Tela1 extends StatefulWidget {
  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  List<Pessoa> lista = [
    Pessoa(nome: "Valerie", idade: 23, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Chase", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Alissa", idade: 23, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Cody", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Emma", idade: 23, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Gage", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Iris", idade: 23, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Kaio", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Yllin", idade: 26, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Marco", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Yin", idade: 26, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Jade", idade: 21, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Veneza", idade: 23, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Gill", idade: 26, sobrenome: "...", cpf: "671.813.871-11"),
    Pessoa(nome: "Katerine", idade: 29, sobrenome: "...", cpf: "671.813.871-11"),
    Pessoa(nome: "Sebastian", idade: 32, sobrenome: "...", cpf: "671.813.871-11"),
    Pessoa(nome: "Vênus", idade: 27, sobrenome: "...", cpf: "671.813.871-11"),
    Pessoa(nome: "Jacob", idade: 30, sobrenome: "...", cpf: "671.813.871-11"),
    Pessoa(nome: "Ryo", idade: 26, sobrenome: "Nishimura", cpf: "671.813.871-11"),
    Pessoa(nome: "Hiroaki", idade: 24, sobrenome: "Nakamura", cpf: "000.000.000-00"),
    Pessoa(nome: "Hiroto", idade: 22, sobrenome: "Nakamura", cpf: "000.000.000-00"),
    Pessoa(nome: "Doi", idade: 24, sobrenome: "Ichinose", cpf: "000.000.000-00"),
    Pessoa(nome: "Henry", idade: 28, sobrenome: "Mattos", cpf: "671.813.871-11"),
    Pessoa(nome: "Yoshimi", idade: 28, sobrenome: "Ottoya", cpf: "000.000.000-00"),
    Pessoa(nome: "Kenji", idade: 28, sobrenome: "Osbourne", cpf: "000.000.000-00"),
    Pessoa(nome: "Jake", idade: 26, sobrenome: "...", cpf: "000.000.000-00"),
    Pessoa(nome: "Joshua", idade: 26, sobrenome: "...", cpf: "000.000.000-00"),
    Pessoa(nome: "Ash", idade: 23, sobrenome: "....", cpf: "671.813.871-11"),
    Pessoa(nome: "Kyra", idade: 22, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Ophelia", idade: 22, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Andrew", idade: 23, sobrenome: ".....", cpf: "000.000.000-00"),
    Pessoa(nome: "Ares", idade: 32, sobrenome: "....", cpf: "671.813.871-11"),
    Pessoa(nome: "Atlas", idade: 28, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Haniel", idade: 25, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Anwi", idade: 27, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Jay", idade: 28, sobrenome: "....", cpf: "671.813.871-11"),
    Pessoa(nome: "Ace", idade: 26, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Robert", idade: 29, sobrenome: "....", cpf: "000.000.000-00"),
    Pessoa(nome: "Chesire", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Mike", idade: 24, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Kent", idade: 30, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Khronos", idade: 35, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Tom", idade: 21, sobrenome: "......", cpf: "000.000.000-00"),
    Pessoa(nome: "Terry", idade: 21, sobrenome: "......", cpf: "000.000.000-00"),
  ];

final TextEditingController nomeController = TextEditingController();
  final TextEditingController sobrenomeController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  void removerItem(int index){
    setState(() {
      lista.removeAt(index);
    });
  }

  void openModal(){
    showModalBottomSheet(
      context: context, 
      builder: (BuildContext context){
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 800,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Text(
                  "Adicione os dados do usuário",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: nomeController,
                  decoration: InputDecoration(label: Text("Nome")),
                ),
                TextField(
                    controller: sobrenomeController,
                    decoration: InputDecoration(label: Text("Sobrenome")),
                  ),
                  TextField(
                    controller: idadeController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(label: Text("Idade")),
                  ),
                  TextField(
                    controller: cpfController,
                    decoration: InputDecoration(
                      label: Text("CPF"),
                    ),
                  ),
                       SizedBox(height: 30),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              const Color.fromARGB(255, 189, 163, 223)),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          minimumSize: WidgetStatePropertyAll(Size(300, 50))),
                      onPressed: () {
                        setState(() {
                          lista.add(Pessoa(
                              nome: nomeController.text,
                              idade: int.parse(idadeController.text),
                              sobrenome: sobrenomeController.text,
                              cpf: cpfController.text));
                        });
                        Navigator.pop(context);
                        nomeController.clear();
                        sobrenomeController.clear();
                        idadeController.clear();
                        cpfController.clear();
                      },
                      child: Text("Cadastrar")),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Lista Nomes"),
          backgroundColor: const Color.fromARGB(255, 189, 163, 223),
        ),
        body: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return Sextou(
                nome: lista[index].nome, 
                sobrenome: lista[index].sobrenome, onRemove: () => removerItem(index),
              );
            
            },


            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                openModal();
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.deepPurpleAccent,
              ),
            );
  }
}
