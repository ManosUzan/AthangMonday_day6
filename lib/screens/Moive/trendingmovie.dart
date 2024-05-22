import 'package:flutter/material.dart';
import 'package:monday_day6/model/movie_model.dart';
import 'package:monday_day6/providers/movie_provider.dart';
import 'package:monday_day6/screens/Moive/moviedetails.dart';
import 'package:monday_day6/widgets/movies/movie_tile.dart';
import 'package:provider/provider.dart';

class trendingmovie extends StatefulWidget {


  @override
  State<trendingmovie> createState() => _trendingmovieState();
}

class _trendingmovieState extends State<trendingmovie> {
   @override
  void initState(){
    print('prints at first');
    Provider.of<MovieProvider>(context, listen: false).loadMovies();
  }
  @override
   Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;

    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieTile(movie: movieList[index]);
          }),
    );
  }
}