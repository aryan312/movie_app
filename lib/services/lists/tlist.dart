import 'package:flutter/material.dart';
import 'package:movie_app/services/movie.dart';

class Tlist extends StatelessWidget {
  final int index;

  Tlist({this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/moviedetails', arguments: {
          'id': topRatedMovieList[index].id,
          'title': topRatedMovieList[index].title,
          'imageUrl': topRatedMovieList[index].imageUrl,
          'description': topRatedMovieList[index].description,
          'rating': topRatedMovieList[index].rating,
          'year': topRatedMovieList[index].year,
          'duration': topRatedMovieList[index].duration,
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(topRatedMovieList[index].imageUrl))),
            ),
            Container(
              height: 40,
              width: 150,
              child: Text(topRatedMovieList[index].title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
