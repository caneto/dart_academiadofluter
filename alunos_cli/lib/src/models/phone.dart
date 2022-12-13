// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class Phone {
  final int ddd;
  final String phone;

  Phone({
    required this.ddd,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'ddd':ddd,
      'phone': phone,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Phone.fromMap(Map<String, dynamic> map) {
    return Phone(
      ddd: map['ddd'] ?? 9,
      phone: map['phone'] ?? '',
    );
  }

  factory Phone.fromJson(String json) => Phone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Phone(ddd: $ddd, phone: $phone)';
}
