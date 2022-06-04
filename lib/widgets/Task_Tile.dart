import 'package:flutter/material.dart';

class Taskstile extends StatelessWidget {
  Taskstile({this.Ischecked, this.onchecked, this.name, this.onlongpressed});
  final bool? Ischecked;
  final Function(bool?)? onchecked;
  final String? name;
  VoidCallback? onlongpressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onlongpressed,
      title: Text(
        name!,
        style: TextStyle(
            decoration: Ischecked! ? TextDecoration.lineThrough : null),
      ),

      // isThreeLine: widget.isThreeLine,
      trailing: Checkbox(value: Ischecked, onChanged: onchecked),
    );
  }
}
