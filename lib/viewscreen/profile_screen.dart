import 'package:flutter/material.dart';
import 'package:lesson2/model/user_record.dart';

class ProfileScreen extends StatefulWidget{
  
  const ProfileScreen(this.user, {Key? key}) : super(key: key);

  final UserRecord user;

  static const routeName= '/profileScreen';

  @override
  State<StatefulWidget> createState() {
    return _ProfileScreen();
  }
}

class _ProfileScreen extends State<ProfileScreen>{

  late _Controller con; 

  @override
  void initState() {
    
    super.initState();
    con = _Controller(this);
  }

  void render(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Text('name : ${widget.user.name}, email : ${widget.user.email}'),
    );
  }

}

class _Controller {
   _ProfileScreen state;
    _Controller(this.state);
}