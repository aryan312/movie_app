import 'package:movie_app/services/movie.dart';
import 'package:movie_app/services/lists/hlist.dart';

import 'package:flutter/material.dart';
import 'package:movie_app/services/lists/tlist.dart';
import 'package:movie_app/services/movie.dart';
class buildlist3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        itemCount: movieList.length,
        itemBuilder: (context,index) => Tlist(index: index),
        // children: [
        //   Hlist(),
        //   SizedBox(width: 10),
        //   Hlist(),
        //   SizedBox(width: 10),
        //   Hlist(),
        //   SizedBox(width: 10),
        //   Hlist(),
        //   SizedBox(width: 10),
        // ],
      ),
    );
  }
}
