import 'package:flutter/material.dart';
import 'package:lesson2/model/course.dart';
import 'package:lesson2/viewscreen/cardlist_screen.dart';
import 'package:lesson2/viewscreen/counterdemo_screen.dart';
import 'package:lesson2/viewscreen/listview_screen.dart';

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
  var formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
    print('************ StartScreen: initState()');
  }

  @override
  Widget build(BuildContext context) {
    print('************ StartScreen: build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Sign In, Please!',
              style: Theme.of(context).textTheme.headline4,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: 'Enter email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: 'Enter Password',
                    ),
                    obscureText: true,
                    autocorrect: false,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: con.counterDemo,
              child: const Text('Counter Demo'),
            ),
            ElevatedButton(
              onPressed: con.cardlistDemo,
              child: const Text('Card list Demo'),
            ),
            ElevatedButton(
              onPressed: con.listViewDemo,
              child: const Text('ListView Demo'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    print('************ StartScreen: dispose()');
    super.dispose();
  }
}

class _Controller {
  late _StartState state;
  _Controller(this.state);

  void counterDemo() {
    Navigator.pushNamed(state.context, CounterDemoScreen.routeName);
  }

  void cardlistDemo() {
    Navigator.pushNamed(
      state.context,
      CardListScreen.routeName,
      arguments: courseList,
    );
  }

  void listViewDemo() {
    Navigator.pushNamed(
      state.context,
      ListViewScreen.routeName,
      arguments: courseList,
    );
  }
}
