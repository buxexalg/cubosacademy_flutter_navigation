import 'package:flutter/material.dart';
import 'package:flutter_navigation/fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    Color? incomingBackgroundColor =
        ModalRoute.of(context)?.settings.arguments as Color?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator App - Third'),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  child: Text('Voltar'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ElevatedButton(
                  child: Text('Quatro removendo'),
                  onPressed: () {
                    final parameter = FourthParameters('Lucas', '25');
                    Navigator.popAndPushNamed(context, 'fourth',
                        arguments: parameter);
                  })
            ]),
          ),
        ),
      ),
      backgroundColor: incomingBackgroundColor == null
          ? Colors.black
          : incomingBackgroundColor,
    );
  }
}
