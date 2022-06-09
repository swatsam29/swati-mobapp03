import 'dart:developer';

import 'package:flutter/material.dart';

class CounterDemoScreen extends StatefulWidget {
  const CounterDemoScreen({Key? key}) : super(key: key);

  static const routeName = '/counterDemoScreen';

  @override
  State<StatefulWidget> createState() {
    return _CounterDemoState();
  }
}

class _CounterDemoState extends State<CounterDemoScreen> {
  late _Controller con;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Demo'),
        ),
        body: Column(
          children: [
            Text(
              'Counter = $counter',
              style: Theme.of(context).textTheme.headline3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 100.0,
                  onPressed: con.countUp,
                  icon: const Icon(Icons.arrow_upward),
                ),
                IconButton(
              iconSize: 100.0,
              onPressed: con.countDown,
              icon: const Icon(Icons.arrow_downward),
            ),
              ],
            ),
          ],
        ));
  }
}

class _Controller {
  late _CounterDemoState state;
  _Controller(this.state);

  void countUp(){
    ++state.counter;
    print('========= ${state.counter}');

  }
  void countDown(){
    --state.counter;
    print('========= ${state.counter}');

  }
}
