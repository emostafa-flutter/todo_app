import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/provider/todos.dart';
import 'package:todo_app/widgets/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty ? Center(child: Text('No todos', style: TextStyle(fontSize: 20),)) : GridView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          childAspectRatio: 2,
          crossAxisSpacing: 50,
          mainAxisSpacing: 50),

      itemBuilder: (context, index) {
        final todo = todos[index];
        return TodoWidget(todo: todo); 
      },
      itemCount: todos.length,
    );
  }
}
