import 'package:flutter/material.dart';
import 'package:lesson2/model/course.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen(this.allCourses, {Key? key}) : super(key: key);

  static const routeName = '/ListViewScreen';

  final List<Course> allCourses;

  @override
  State<StatefulWidget> createState() {
    return _ListViewState();
  }
}

class _ListViewState extends State<ListViewScreen> {
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
        title: const Text('List View Demo Screen'),
      ),
      body: ListView.builder(
        itemBuilder: itemBuilder,
      ),
    );
  }
}

class _Controller {
  _ListViewState state;
  _Controller(this.state);
}
