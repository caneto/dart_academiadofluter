
import 'dart:convert';

import '../models/filme.dart';

import 'package:http/http.dart' as http;

class FilmesRepository {
  Future<List<Filme>> findAll() async {
    final filmeResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes'));

    final filmesList = jsonDecode(filmeResponse.body);

    return filmesList.map<Filme>((filmeMap) {
      return Filme.fromMap(filmeMap);
    }).toList();
  }

  Future<Filme> findById(String id) async {
    final filmeResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes/$id'));
    
    return Filme.fromJson(filmeResponse.body);
  }

  Future<void> update(Filme filme) async {
    await http.put(
      Uri.parse('http://localhost:3031/filmes/${filme.id}'),
      body: filme.toJson(),
      headers: {
        'content-type':'application/json',
      }
    );
  }

  Future<void> insert(Filme filme) async {
    await http.post(
      Uri.parse('http://localhost:3031/filmes/'),
      body: filme.toJson(),
      headers: {
        'content-type':'application/json',
      }
    );
  }

}