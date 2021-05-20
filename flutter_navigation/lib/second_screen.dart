import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator App - Second'),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  child: Text('Third'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'third',
                        arguments: Colors.orange[100]);
                  }),
              ElevatedButton(
                  child: Text('Fourth'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'fourth');
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
