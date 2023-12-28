import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  const ToDoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Clicked on todo item");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.grey,
        leading: Icon(
          Icons.check_box,
          color: Colors.black,
        ),
        title: Text(todo.todoText!,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                decoration: todo.isDone ? TextDecoration.lineThrough : null)),
        trailing: Container(
          child: IconButton(
            onPressed: () {
              print("Clicked on Delete");
            },
            icon: Icon(Icons.delete),
            color: Colors.black,
            iconSize: 28,
          ),
        ),
      ),
    );
  }
}
