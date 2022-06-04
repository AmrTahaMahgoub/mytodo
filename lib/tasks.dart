class Task {
  Task({this.name, this.Isdone = false});
  final String? name;
  bool Isdone;
  void changecheckedvalue() {
    Isdone = !Isdone;
  }
}
