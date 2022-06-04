import 'package:flutter/material.dart';
import 'package:mytodo/widgets/Task_List.dart';
import 'add_tasks.dart';
import 'package:provider/provider.dart';
import 'package:mytodo/taskdata.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Color(0xff757575),
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Addtasks(),
                ),
              ),
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightBlueAccent,
            padding:
                EdgeInsets.only(top: 40.0, left: 30, bottom: 30, right: 30),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list,
                        size: 40.0, color: Colors.lightBlueAccent),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${Provider.of<Taskdata>(context).taskcount}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0)),
                  color: Colors.white),
              child: Taskslist(),
            ),
          )
        ],
      ),
    );
  }
}
