class Lesson {
  int _id;
  String _name;
  String _imagePath;
  String _description;

  Lesson({int id, String name, String imagePath, String description}) {
    this._id = id;
    this._name = name;
    this._imagePath = imagePath;
    this._description = description;
  }

  int get id => _id;
  String get name => _name;
  String get imagePath => _imagePath;
  String get description => _description;

  set id(int id) {
    this._id = id;
  }

  set name(String name) {
    this._name = name;
  }

  set imagePath(String imagePath) {
    this._imagePath = imagePath;
  }

  set description(String description) {
    this._description = description;
  }
}
