import 'package:flutter/material.dart';
import 'package:movie_app/services/movie.dart';

class Hlist extends StatelessWidget {
  final int index;
  

  Hlist({this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/moviedetails',
          arguments: {
          'id': movieList[index].id,
          'title': movieList[index].title,
          'imageUrl': movieList[index].imageUrl,
          'description': movieList[index].description,
          'rating': movieList[index].rating,
          'year': movieList[index].year,
          'duration': movieList[index].duration,
          

          });
        },
              child: Column(
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(movieList[index].imageUrl))),
            ),
            Container(
              height: 40,
              width: 150,
                        child: Text(movieList[index].title,
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
