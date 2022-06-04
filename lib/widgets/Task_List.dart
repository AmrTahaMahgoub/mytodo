import 'package:flutter/material.dart';
import 'package:mytodo/widgets/Task_Tile.dart';
import 'package:mytodo/taskdata.dart';
import 'package:provider/provider.dart';

class Taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, newTaskdata, child) => ListView.builder(
          itemCount: newTaskdata.taskcount,
          itemBuilder: (context, index) {
            return Taskstile(
              Ischecked: newTaskdata.tasks[index].Isdone,
              name: newTaskdata.tasks[index].name,
              onchecked: (bool? Ischeckked) {
                newTaskdata.updatetask(newTaskdata.tasks[index]);
              },
              onlongpressed: () {
                newTaskdata.onlongtouch(newTaskdata.tasks[index]);
              },
            );
          }),
    );
  }
}
