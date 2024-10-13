import 'dart:convert';
import 'dart:io';
import 'package:dart_collections/students.dart';

void main() {
  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  var studentsList = jsonDecode(json) as List<dynamic>;
  List<Map<String, String>> mappedStudents = studentsList.map((student) => Map<String, String>.from(student)).toList();
  // this converts the list of dynamic objects to a list of maps

  Students students = Students(mappedStudents);
  // students.output();
  students.plus({'first': 'John', 'last': 'Doe', 'email': 'doej@algonquincollege.com'});
  students.remove('first', 'Adam');
  students.output();
  students.sort('last');
}
