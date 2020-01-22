import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter com MobX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Text(
              '0',
              style: TextStyle(
                fontSize: 42.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('Adicionar'),
                  onPressed: () {},
                ),
                FlatButton.icon(
                  icon: Icon(Icons.remove),
                  label: Text('Diminuir'),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
