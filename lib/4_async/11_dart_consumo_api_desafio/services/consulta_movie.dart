
import 'package:dart_fundamentos/4_async/11_dart_consumo_api_desafio/controller/filme_controller.dart';

import '../models/filme.dart';

Future<void> main() async {

  //FilmeController().findAll();
  //Filme filme = await FilmeController().findById('774825');

  Filme filme;

  //print(filme);

  //filme.originalLanguage = 'pt';

  //await FilmeController().update(filme);

  filme = Filme(adult: false,
                backdropPath: "/eG0oOQVsniPAuecPzDD1B1gnYWy.jpg",
                genreIds: [16,35, 15],
                originalLanguage: 'pt', 
                originalTitle: 'Completo Piedade a crise', 
                overview: 'Como vive e os dramas no completo piedade', 
                popularity: 1000.00,
                posterPath: '/zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg',
                releaseDate: "2022-03-01", 
                title: "Completo Piedade a crise", 
                video: false, 
                voteAverage: 0.1, 
                voteCount: 10,
                voteAverange: 1.0
        );

  //await FilmeController().insert(filme);

  

  filme = await FilmeController().findById('e43bd670-6cc4-11ed-903d-57550497a41e');

  print(filme);

}