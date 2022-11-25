
import 'package:dart_fundamentos/4_async/11_dart_consumo_api_desafio/respository/filmes_repository.dart';

import '../models/filme.dart';

class FilmeController {
  final _filmeRepository = FilmesRepository();

   Future<void> findAll() async {
    final filmes = await _filmeRepository.findAll();

    filmes.forEach(print);
  }

  Future<Filme> findById(String id) async {
    final filme = await _filmeRepository.findById(id);

    return filme;
  }

  Future<void> update(Filme filmeUpdate) async {
    //final filme = await _filmeRepository.findById(id);

    await _filmeRepository.update(filmeUpdate);

  }

  Future<void> insert(Filme filmeInsert) async {
    
    await _filmeRepository.insert(filmeInsert);

  }

}