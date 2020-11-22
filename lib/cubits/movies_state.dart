import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/movie.dart';

part 'movies_state.freezed.dart';

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState.loaded(List<Movie> movies) = Loaded;
  const factory MoviesState.loading() = Loading;
  const factory MoviesState.error() = Error;
}
