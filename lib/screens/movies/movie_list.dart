import 'package:flutter/material.dart';
import 'package:movie_app/services/lists/hlist.dart';
import 'package:movie_app/services/list_label/labels.dart';
import 'package:movie_app/services/lists/vlist.dart';
import 'package:movie_app/services/lists/buildlist1.dart';
import 'package:movie_app/services/lists/buildlist2.dart';
import 'package:movie_app/services/lists/buildlist3.dart';
import 'package:movie_app/services/drawer.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          title: Text(
            "Movies & TV shows",
            style: TextStyle(
              color: Colors.grey[900],
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
               onPressed : () {},
              icon:Icon(Icons.search,
              color: Colors.white,)
            )
          ],
          elevation: 1,
        ),
        drawer: drawer(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[900],
            child: Column(children: [
              label(
                area: 'Recommended',
              ),
              buildlist1(),
              SizedBox(height: 5),
              label(area: 'Best of 2020'),
              //
              buildlist2(),
              // SizedBox(height: 10),
              label(area: 'Popular'),
              buildlist3(),

              label(area: 'Upcoming'),
              buildlist2(),
            ]),
          ),
        ),
      );
  }
}