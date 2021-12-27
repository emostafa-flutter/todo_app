import 'package:flutter/material.dart';
import 'package:todo_app/widgets/add_todo_dialog_widgets.dart';
import 'package:todo_app/widgets/completed_list_widget.dart';
import 'package:todo_app/widgets/todo_list_widget.dart';

class TabBarOne extends StatefulWidget {
  const TabBarOne({Key? key}) : super(key: key);

  @override
  _TabBarOneState createState() => _TabBarOneState();
}

class _TabBarOneState extends State<TabBarOne> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [TodoListWidget(), CompletedListWidget()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffb9780),
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined), label: 'Todos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done, size: 28), label: 'Completed')
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.black,
        onPressed: ()=> showDialog(context: context, builder: (context)=>AddTodoDialogWidget(),barrierDismissible: false),
      ),
    );
  }
}
