import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskDetails extends StatefulWidget {

  int id;
  String title;
  String date;

  @override
  _TaskDetailsState createState() => _TaskDetailsState();

  TaskDetails(this.id, this.title, this.date);
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Task Details"),
        actions: [
          Icon( Icons.edit,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Text("${widget.title}",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16),
        ),
      ),
    );
  }
}
