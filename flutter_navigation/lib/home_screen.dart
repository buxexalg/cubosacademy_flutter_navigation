import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator App - First'),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  child: Text('Second'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'second');
                  }),
              ElevatedButton(
                  child: Text('Third'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'third');
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
