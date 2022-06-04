import 'package:flutter/material.dart';
import 'package:mytodo/taskdata.dart';
import 'package:mytodo/tasks.dart';
import 'package:mytodo/widgets/Task_Tile.dart';
import 'package:provider/provider.dart';

class Addtasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newtask;
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
          color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          ' ADD NEW TASKS',
          textAlign: TextAlign.center,
        ),
        TextField(
          autofocus: true,
          onChanged: (value) {
            newtask = value;
          },
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.lightBlueAccent,
          ),
          onPressed: () {
            Provider.of<Taskdata>(context, listen: false).addtasks(newtask!);
            Navigator.pop(context);
          },
          child: Text('ADD', style: TextStyle(color: Colors.white)),
        )
      ]),
    );
  }
}
