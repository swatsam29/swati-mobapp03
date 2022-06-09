import 'package:flutter/material.dart';

class LifcycleScreen extends StatefulWidget {
  const LifcycleScreen({Key? key}) : super(key: key);

  static const routeName = '/lifecycleScreen';
 
 @override
  State<StatefulWidget> createState() {
    return _LifecycleState();
  }

}

class _LifecycleState extends State<LifcycleScreen> {

  String? gps;


  @override
  void initState() {
     super.initState();
     print('============ LifeCycleScreen: initState()');
     gps = 'allocated';
     print('======== GPS is allocated and in use by Lifecycle');
  }
  
  @override
  Widget build(BuildContext context) {
    print('============ LifeCycleScreen: build()');
    print('============ $gps');
    return Scaffold(
      appBar: AppBar(
        title: const Text('LifeCycle Demo'),
      ),
      body: const Text('LifeCycle Demo'),
    );
  }

  @override
  void dispose() {
    print('============ LifeCycleScreen: dispose()');
    gps = null;
    print('============ GPS released');
    super.dispose();
  }


}
