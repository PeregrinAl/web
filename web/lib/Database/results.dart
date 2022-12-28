import 'model.dart';

class Results extends Model {
  static String table = 'todo_items';

  int? id;
  String pastName;
  String discipline;

  Results({this.id, required this.pastName, required this.discipline});

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {'pastName': pastName, 'complete': discipline};

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  static Results fromMap(Map<String, dynamic> map) {
    return Results(
        id: map['id'],
        pastName: map['pastName'],
        discipline: map['discipline']);
  }
}
