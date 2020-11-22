// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$_$_MovieFromJson(Map<String, dynamic> json) {
  return _$_Movie(
    voteCount: json['vote_count'] as int,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    title: json['title'] as String,
    releaseDate: json['release_date'] as String,
    backdropPath: json['backdrop_path'] as String,
    posterPath: json['poster_path'] as String,
    overview: json['overview'] as String,
  );
}

Map<String, dynamic> _$_$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
      'title': instance.title,
      'release_date': instance.releaseDate,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
    };
