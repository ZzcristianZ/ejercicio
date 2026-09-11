import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
    ?'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
    :'https://www.godaddy.com/resources/ca/wp-content/uploads/sites/7/2024/12/DTUK1741-Blog-Hero-Images-CA-Part-1-404-page-not-found-and-how-to-fix-it.png?size=1080x0',
    genreIds: moviedb.genreIds.map((e)=> e.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
    ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
    : 'no-poster',
    releaseDate: moviedb.releaseDate!,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount:moviedb.voteCount,
  );


  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
    ?'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
    :'https://www.godaddy.com/resources/ca/wp-content/uploads/sites/7/2024/12/DTUK1741-Blog-Hero-Images-CA-Part-1-404-page-not-found-and-how-to-fix-it.png?size=1080x0',
    genreIds: moviedb.genres.map((e)=> e.name).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
    ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
    : 'https://www.godaddy.com/resources/ca/wp-content/uploads/sites/7/2024/12/DTUK1741-Blog-Hero-Images-CA-Part-1-404-page-not-found-and-how-to-fix-it.png?size=1080x0',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount:moviedb.voteCount,
  );


}
