// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({
    required this.ddd,
    required this.telefone,
  });

  // metodo que paga o nosso objeto Telefone e transforma em um Objeto Map<String, dynamic>
  // toMap()
  // Passo 1
  Map<String, dynamic> toMap() {
    return {
      'ddd':ddd,
      'telefone': telefone,
    };
  }

  // metodo que pega um Map<String, dynamic> e transforma em um json pelo Pacote dart:convert (JsonEncode)
  // toJson
  // Passo 2
  String toJson() => jsonEncode(toMap());

  // Passo 2 da deserialização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 9,
      telefone: map['telefone'] ?? '',
    );
  }

  // Passo 1 
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
}
