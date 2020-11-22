import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/movies_cubit.dart';
import '../cubits/movies_state.dart';
import '../entities/movie.dart';
import '../utils/widgets/rounded_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Movies'),
        centerTitle: false,
      ),
      body: BlocConsumer<MoviesCubit, MoviesState>(
          listener: (context, state) => null,
          builder: (context, state) {
            return state.maybeWhen(
                loading: () => Center(
                      child: CircularProgressIndicator(),
                    ),
                loaded: (movies) => _getMovies(context, movies),
                orElse: () => Container());
          }),
    );
  }

  Widget _getMovies(BuildContext context, List<Movie> movies) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        int count = 1;
        if (constraints.maxWidth > 900)
          count = 3;
        else if (constraints.maxWidth > 600) count = 2;
        return GridView.count(
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          crossAxisCount: count,
          children: movies.map((e) => _getMovieCard(context, e)).toList(),
        );
      }),
    );
  }

  Widget _getMovieCard(BuildContext context, Movie movie) {
    return RoundedCard(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
                'https://image.tmdb.org/t/p/w185${movie.posterPath}'),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withAlpha(20),
                      Colors.black.withAlpha(130),
                    ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 40,
                    child: Center(
                        child: Text(
                      movie.voteAverage.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        movie.title,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
