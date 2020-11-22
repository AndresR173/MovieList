import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.g.dart';
part 'movie.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Movie({
    int voteCount,
    double voteAverage,
    String title,
    String releaseDate,
    String backdropPath,
    String posterPath,
    String overview,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
