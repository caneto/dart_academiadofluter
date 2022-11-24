// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'cidade.dart';
import 'telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rua': rua,
      'numero': numero,
      'cep': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: (map["rua"] ?? '') as String,
      numero: (map["numero"] ?? 0) as int,
      cep: (map["cep"] ?? '') as String,
      cidade: Cidade.fromMap((map["cidade"]?? Map<String,dynamic>.from({})) as Map<String,dynamic>),
      telefone: Telefone.fromMap((map["telefone"]?? Map<String,dynamic>.from({})) as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Endereco.fromJson(String source) => Endereco.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Endereco(rua: $rua, numero: $numero, cep: $cep, cidade: $cidade, telefone: $telefone)';
  }
}
