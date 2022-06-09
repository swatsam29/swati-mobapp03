import 'package:flutter/material.dart';
import 'package:lesson2/viewscreen/counterdemo_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  static const routeName = '/startScreen';

  @override
  State<StatefulWidget> createState() {
    return _StartState();
  }
}

class _StartState extends State<StartScreen> {
  
  late _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Start Screen'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: con.counterDemo,
              child: const Text('Counter Demo'),
            ),
          ],
        ));
  }
}

class _Controller {
  late _StartState state;
  _Controller(this.state);

  void counterDemo(){
    Navigator.pushNamed(state.context, CounterDemoScreen.routeName);
  }
}
