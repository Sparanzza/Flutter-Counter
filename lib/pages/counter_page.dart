import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  var _textStyle = new TextStyle(fontSize: 20.0);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Number of clicks', style: _textStyle),
              Text(
                '$_counter',
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _zeroCounter),
        Expanded(child: SizedBox(width: 5)),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: _removeCounter),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _addCounter),
      ],
    );
  }

  void _addCounter() {
    setState(() => _counter++);
  }

  void _removeCounter() {
    setState(() => _counter--);
  }

  void _zeroCounter() {
    setState(() => _counter = 0);
  }
}
