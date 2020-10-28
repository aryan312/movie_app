

import 'package:flutter/material.dart';
import 'package:movie_app/screens/movies/movie_details.dart';
import 'package:movie_app/screens/movies/movie_list.dart';
import 'package:movie_app/services/lists/hlist.dart';
import 'package:movie_app/services/list_label/labels.dart';
import 'package:movie_app/services/lists/vlist.dart';
import 'package:movie_app/services/lists/buildlist1.dart';
import 'package:movie_app/services/lists/buildlist2.dart';
import 'package:movie_app/services/lists/buildlist3.dart';
import 'package:movie_app/services/drawer.dart';
import 'package:movie_app/services/movie.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MovieDetails() ,
      initialRoute: '/',
      routes: {
        '/':(context) => MovieList(),
        '/moviedetails' :(context) => MovieDetails(),
        

      }
      
         );
  }
}
