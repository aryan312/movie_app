import 'package:flutter/material.dart';
import 'package:movie_app/services/movie.dart';

class Vlist extends StatelessWidget {

  final int index;

  Vlist({this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/moviedetails',
         arguments: {
          'id': bestMovieList[index].id,
          'title': bestMovieList[index].title,
          'imageUrl': bestMovieList[index].imageUrl,
          'description': bestMovieList[index].description,
          'rating': bestMovieList[index].rating,
          'year': bestMovieList[index].year,
          'duration': bestMovieList[index].duration,
          

          });
      },
          child: Container(
        padding: EdgeInsets.symmetric(vertical:5, horizontal:10),
        height: 200,
        width: 450,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(bestMovieList[index].imageUrl))),
                ),
                SizedBox(
                    width: 10,
                    height: 200,
                    child: Container(color: Colors.black)),
                Container(
                  //  padding: EdgeInsets.all(5),
                  height: 200,
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Text(bestMovieList[index].title,
                              style: TextStyle(
                                  color: Colors.amber[600],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)
                                  ),
                        ),
                      
                        SizedBox(height: 5),
                        Container(
                            padding:
                                EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                            width: 250,
                            child: Text(
                             bestMovieList[index].description,
                              style: TextStyle(color: Colors.amber),
                            ))
                      ],
                    ),
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
