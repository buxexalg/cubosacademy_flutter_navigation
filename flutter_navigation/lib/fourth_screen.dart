import 'package:flutter/material.dart';

class FourthParameters {
  final String nome;
  final String idade;

  FourthParameters(this.nome, this.idade);
}

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    FourthParameters? incomingNames =
        ModalRoute.of(context)?.settings.arguments as FourthParameters?;

    final String nome;
    final String idade;

    if (incomingNames == null) {
      nome = '';
      idade = '';
    } else {
      nome = incomingNames.nome;
      idade = incomingNames.idade;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator App - Fourth'),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(nome + ' ' + idade),
              ElevatedButton(
                  child: Text('Voltar'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ElevatedButton(
                  child: Text('Home'),
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
