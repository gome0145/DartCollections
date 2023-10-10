import 'dart:convert' as convert;
import 'package:dart3/dart3.dart';

void main(List<String> arguments) {
  String json = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';

  // var scores = convert.jsonDecode(jsonString);

  List<dynamic> newest = convert.jsonDecode(json);

  List<Map<String, String>> studentsList = [];

  for (var item in newest) {
    Map<String, String> tempMap = {};
    for (var key in item.keys) {
      tempMap[key] = item[key];
    }
    studentsList.add(tempMap);
  }
  // print(studentsList);

  var students = Students(studentsList);

  students.sort("first");
  students.output();
  students.plus({
    "first": "Montserrat",
    "last": "Gomez",
    "email": "montserrat.123@gmail.com"
  });
  students.output();
  students.remove("email");
  students.output();
}
