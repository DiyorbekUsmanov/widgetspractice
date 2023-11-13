import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Practice'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GreetingWidget(message: 'Hello Diyorbek NUR'),
              CounterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String message;
  const GreetingWidget({Key? key, required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void increaseCounter() {
    setState(() {
      _counter++;
    });
  }
   void decreaseCounter() {
    setState(() {
      _counter--;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(padding: EdgeInsets.only(top: 15.0)),
        const Text(
          textAlign: TextAlign.center,
          'You have pushed the button \nthis many times:',
          style: TextStyle(            
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(right: 10.0)),
            ElevatedButton(
              onPressed: decreaseCounter,
              child: const Text('-'),
            ),

            const Padding(padding: EdgeInsets.only(left: 10.0)),
            ElevatedButton(
              onPressed: increaseCounter,
              child: const Text('+'),
            ),
          ],
        )
      ],
    );
  }
}
