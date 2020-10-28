import 'package:flutter/material.dart';
import 'package:movie_app/services/lists/vlist.dart';
import 'package:movie_app/services/movie.dart';

class buildlist2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 270,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,

        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
        itemCount: bestMovieList.length,
        itemBuilder: (context,index) => Vlist(index:index),
        // children: [
        //   Vlist(),
        //   SizedBox(width: 10),
        //   Vlist(),
        //   SizedBox(width: 10),
        //   Vlist(),
        //   SizedBox(width: 10),
        //   Vlist(),
        // ],
      ),
    ));
  }
}
