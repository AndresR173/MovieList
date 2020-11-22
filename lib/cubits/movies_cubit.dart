import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/movies_service.dart';
import 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final MoviesService service;

  MoviesCubit(this.service) : super(Loading()) {
    _getMovies();
  }

  void _getMovies() async {
    try {
      emit(Loading());
      final users = await service.getMovies();
      emit(Loaded(users));
    } catch (e) {
      emit(Error());
    }
  }
}
