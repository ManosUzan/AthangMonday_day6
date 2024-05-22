import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:monday_day6/model/movie_model.dart';
import 'package:monday_day6/widgets/movies/movie_tile.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


import '../../providers/movie_provider.dart';

class MoviesByCategoryScreen extends StatefulWidget {
  
  final String category;
  const MoviesByCategoryScreen({super.key, required this.category});

  @override
  State<MoviesByCategoryScreen> createState() => _MoviesByCategoryScreenState();
}

class _MoviesByCategoryScreenState extends State<MoviesByCategoryScreen> {
   bool loading = true;
  List<MovieModel>  movieList= [];
  
  @override
  void initState() {
    MoviesByCategoryScreen();
  }

 
 Future<void> MoviesByCategoryScreen() async {
final res= await http.get(Uri.parse('https://yts.mx/api/v2/list_movies.json?genre=' + widget.category));
    // print(jsonDecode(res.body)['data']['movies']);

    List<MovieModel> tempMovies = [];

     for(final movie in jsonDecode(res.body)['data']['movies']){
        tempMovies.add(MovieModel.fromJson(movie));
    }
setState(() {

      movieList = tempMovies;
      loading= false;
    });
 }

  @override
  Widget build(BuildContext context) {
    // List<MovieModel> movieList = Provider.of<MovieProvider>(context,listen:false).getMoviesByCategory(widget.category);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieTile(movie: movieList[index]);
          }),
    ),
    );
  }
  
 
}
