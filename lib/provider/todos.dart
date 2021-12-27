import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
        createdTime: DateTime.now(),
        title: 'First Todo !',
        description: 'THis is My First Todo in My Application'),
    Todo(
        createdTime: DateTime.now(),
        title: 'Second Todo !',
        description: 'THis is My Second Todo in My Application'),
    Todo(
        createdTime: DateTime.now(),
        title: 'Third Todo !',
        description: 'THis is My Third Todo in My Application'),
    Todo(
        createdTime: DateTime.now(),
        title: 'Fourth Todo !',
        description: 'THis is My Fourth Todo in My Application'),
  ];
  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  List<Todo> get todosCompleted =>
      _todos.where((todo) => todo.isDone == true).toList();

  void addTodo(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }

  void updateTodo(Todo todo, String title, String description) {
    todo.title = title;
    todo.description = description;

    notifyListeners();
  }
}
