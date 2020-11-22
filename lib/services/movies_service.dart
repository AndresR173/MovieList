import 'package:dio/dio.dart';

import '../entities/movie.dart';

class MoviesService {
  Future<List<Movie>> getMovies() async {
    Response response;
    List<Movie> movies = [];
    try {
      response = await Dio().get(
          "https://api.themoviedb.org/3/trending/movie/week?api_key=060e7c76aff06a20ca4a875981216f3f");

      movies = (response.data['results'] as List)
          .map((e) => Movie.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }

    return movies;
  }
}
