import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Course {
  final int id;
  final String name;
  final bool isStudent;
  
  Course({
    required this.id,
    required this.name,
    required this.isStudent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'isStudent': isStudent,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map["id"] ?? 0,
      name: map["name"] ?? '',
      isStudent: map["isStudent"] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String json) => Course.fromMap(jsonDecode(json));

  @override
  String toString() => 'Course(id: $id, name: $name, isStudent: $isStudent)';
}
