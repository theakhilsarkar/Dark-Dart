class Demo {
  late int _id;
  late String _name;

  void set({required int id, required String name}) {
    this._id = id;
    this._name = name;
  }

  void get() {
    print(_id);
    print(_name);
  }
}
