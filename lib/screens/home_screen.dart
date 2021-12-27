import 'package:flutter/material.dart';
import 'package:todo_app/TabBarPages/tab_bar_one.dart';
import 'package:todo_app/TabBarPages/tab_bar_three.dart';
import 'package:todo_app/TabBarPages/tab_bar_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Todo App'),
          backgroundColor: Color(0xff4f78f5),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Todo 1', icon: Icon(Icons.today_outlined)),
              Tab(text: 'Todo 2', icon: Icon(Icons.today_outlined)),
              Tab(text: 'Todo 3', icon: Icon(Icons.today_outlined)),
            ],
          ),
        ),
        body: TabBarView(children: [
          TabBarOne(),
          TabBarTwo(),
          TabBarThree(),
        ]),
      ),
    );
  }
}
