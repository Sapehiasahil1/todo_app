import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_page.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
        ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: navigateToAddPage,
        label: Text("Add Todo"),
      ),
    );
  }

  void navigateToAddPage() {
      final route= MaterialPageRoute(builder: (context) => AddTodoPage());
      Navigator.push(context, route);
  }
}
