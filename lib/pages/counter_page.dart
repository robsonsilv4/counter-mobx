import 'package:counter_mobx/store/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

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
            Observer(
              builder: (_) => Text(
                '${counter.count}',
                style: TextStyle(
                  fontSize: 42.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('Adicionar'),
                  onPressed: () {
                    counter.increment();
                  },
                ),
                FlatButton.icon(
                  icon: Icon(Icons.remove),
                  label: Text('Diminuir'),
                  onPressed: () {
                    counter.decrement();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
