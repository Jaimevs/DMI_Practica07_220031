import 'dart:async';

import 'package:cinemapedia_220031/domain/entities/movie.dart';
import 'package:flutter/material.dart';

typedef SearchMoviesCallback = Future<List<Movie>> Function(String query);

class SearchMovieDelegate extends SearchDelegate<Movie>{
  final SearchMoviesCallback searchMovies;
  List<Movie> intialMovies;

  StreamController<List<Movie>> debouncedMovies = StreamController.broadcast();
  StreamController<bool> isLoadingStream = StreamController.broadcast();

  Timer? _debounceTimer;

  SearchMovieDelegate({
    required this.searchMovies,
    required this.intialMovies
  }):super(
    searchFieldLabel: 'Buscar peliculas'
  );

  void clearStreams(){
    debouncedMovies.close();
  }

  void _onQueryChanged(String query){
    isLoadingStream.add(true);

    if(_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();

    _debounceTimer = Timer(const Duration(milliseconds: 500), () async{
      final movies = await searchMovies(query);
      intialMovies = movies;
      debouncedMovies.add(movies);
      isLoadingStream.add(false);
    });
  }

  Widget buildResultsAndSuggestions(){
    return StreamBuilder(
      initialData: intialMovies,
      stream: debouncedMovies.stream,
      builder: (context, snapshot) {
        final movies = snapshot.data ?? [];

        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) => _MovieItem(
            movie: movies[index],
            onMovieSelected: (context, movie)
            {
              clearStreams();
              close(context, movie);
            }
          ),
        );
      },
    );
  }
}

@overide
Widget b
