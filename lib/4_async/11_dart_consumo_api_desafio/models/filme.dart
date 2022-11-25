import 'dart:convert';

class Filme {
  bool adult;
  String backdropPath;
  List<int> genreIds;
  String? id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  String releaseDate;
  String title;
  bool video;
  double voteAverange;
  int voteCount;

  Filme({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverange,
    required this.voteCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_averange': voteAverange,
      'vote_count': voteCount,
    };
  }

  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
      adult: (map["adult"] ?? false) as bool,
      backdropPath: (map["backdrop_path"] ?? '') as String,
      //genreIds: List<int>.from(((map['genre_ids'] ?? const <int>[]) as List<int>),),
      genreIds: map['genre_ids'].cast<int>(),
      id: map['id'] != null ? map["id"] ?? '' : null,
      originalLanguage: (map["original_language"] ?? '') as String,
      originalTitle: (map["original_title"] ?? '') as String,
      overview: (map["overview"] ?? '') as String,
      popularity: (map["popularity"] ?? 0) as double,
      posterPath: (map["poster_path"] ?? '') as String,
      releaseDate: (map["release_date"] ?? '') as String,
      title: (map["title"] ?? '') as String,
      video: (map["video"] ?? false) as bool,
      voteAverange: (map["vote_averange"] ?? 0.0) as double,
      voteCount: (map["vote_count"] ?? 0) as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Filme.fromJson(String source) => Filme.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Filme(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverange: $voteAverange, voteCount: $voteCount)';
  }
}
