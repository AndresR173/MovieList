// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

// ignore: unused_element
  _Movie call(
      {int voteCount,
      double voteAverage,
      String title,
      String releaseDate,
      String backdropPath,
      String posterPath,
      String overview}) {
    return _Movie(
      voteCount: voteCount,
      voteAverage: voteAverage,
      title: title,
      releaseDate: releaseDate,
      backdropPath: backdropPath,
      posterPath: posterPath,
      overview: overview,
    );
  }

// ignore: unused_element
  Movie fromJson(Map<String, Object> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get voteCount;
  double get voteAverage;
  String get title;
  String get releaseDate;
  String get backdropPath;
  String get posterPath;
  String get overview;

  Map<String, dynamic> toJson();
  $MovieCopyWith<Movie> get copyWith;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int voteCount,
      double voteAverage,
      String title,
      String releaseDate,
      String backdropPath,
      String posterPath,
      String overview});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object voteCount = freezed,
    Object voteAverage = freezed,
    Object title = freezed,
    Object releaseDate = freezed,
    Object backdropPath = freezed,
    Object posterPath = freezed,
    Object overview = freezed,
  }) {
    return _then(_value.copyWith(
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      title: title == freezed ? _value.title : title as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      overview: overview == freezed ? _value.overview : overview as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int voteCount,
      double voteAverage,
      String title,
      String releaseDate,
      String backdropPath,
      String posterPath,
      String overview});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object voteCount = freezed,
    Object voteAverage = freezed,
    Object title = freezed,
    Object releaseDate = freezed,
    Object backdropPath = freezed,
    Object posterPath = freezed,
    Object overview = freezed,
  }) {
    return _then(_Movie(
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
      title: title == freezed ? _value.title : title as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      overview: overview == freezed ? _value.overview : overview as String,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)

/// @nodoc
class _$_Movie implements _Movie {
  const _$_Movie(
      {this.voteCount,
      this.voteAverage,
      this.title,
      this.releaseDate,
      this.backdropPath,
      this.posterPath,
      this.overview});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieFromJson(json);

  @override
  final int voteCount;
  @override
  final double voteAverage;
  @override
  final String title;
  @override
  final String releaseDate;
  @override
  final String backdropPath;
  @override
  final String posterPath;
  @override
  final String overview;

  @override
  String toString() {
    return 'Movie(voteCount: $voteCount, voteAverage: $voteAverage, title: $title, releaseDate: $releaseDate, backdropPath: $backdropPath, posterPath: $posterPath, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(overview);

  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {int voteCount,
      double voteAverage,
      String title,
      String releaseDate,
      String backdropPath,
      String posterPath,
      String overview}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get voteCount;
  @override
  double get voteAverage;
  @override
  String get title;
  @override
  String get releaseDate;
  @override
  String get backdropPath;
  @override
  String get posterPath;
  @override
  String get overview;
  @override
  _$MovieCopyWith<_Movie> get copyWith;
}
