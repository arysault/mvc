import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "My Counter",
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "You have pressed this buttom this many times:",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Text(
              _controller.getCounter(),
              style: TextStyle(
                fontSize: 34,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          EditButton(() {
            setState(() {
              _controller.decreaseCounter();
            });
          }, Icon(Icons.remove)),
          EditButton(() {
            setState(() {
              _controller.incrementCounter();
            });
          }, Icon(Icons.add))
        ],
      ),
    );
  }
}

class EditButton extends StatelessWidget {
  final Function function;
  final Widget icon;

  EditButton(this.function, this.icon, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: function,
      child: icon,
    );
  }
}
