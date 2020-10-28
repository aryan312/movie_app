import 'package:flutter/material.dart';
import 'package:movie_app/services/drawer.dart';

class MovieDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final args=
    ModalRoute.of(context).settings.arguments as Map<String,String>;
    final String rating =args['rating'];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Details Page",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber[600],
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        // drawer: drawer(),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            // height: double.infinity,
            color: Colors.grey[900],
            child: Column(
              children: [
                SizedBox(height: 10),
                Card(
                  child: Container(
                    height: 350,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                args['imageUrl']),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  child: Center(
                    child: Text(
                      args['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                          fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: RaisedButton(
                          elevation: 5,
                          // focusColor: Colors.amber,
                          color: Colors.amber,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Mark as favorite',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          // hoverColor: Colors.amber[900],
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          elevation: 5,
                          color: Colors.white,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.play_circle_outline_outlined,
                                color: Colors.amber,),
                                
                                Text(
                                  'Play the trailer',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          // hoverColor: Colors.amber[900],
                        ),
                      ),
                      // Icon(
                      //   Icons.favorite_border_outlined

                      // )
                    ],
                  ),
                ),
                SizedBox(height:20),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                          elevation: 10,
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.timer,
                                      color: Colors.amber[700], size: 50),
                                ),
                                Text(args['duration']),
                              ],
                            ),
                          )),
                      Card(
                          elevation: 10,
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.calendar_today_rounded,
                                    size: 50,
                                    color: Colors.amber[700],
                                  ),
                                ),
                                Text(args['year']),
                              ],
                            ),
                          )),
                      Card(
                          elevation: 10,
                          child: Container(
                            width: 80,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.star_outline_sharp,
                                    color: Colors.amber[700],
                                    size: 50,
                                  ),
                                ),
                                Text('$rating/10'),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.all(15.0),
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        args['description'],
                        style: TextStyle(
                          color: Colors.amber,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 1.5),
                      ),
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.black,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_outline_rounded,
                      color: Colors.amber[600],
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Watch Trailer',
                      style: TextStyle(color: Colors.amber[600]),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.amber[600],
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.description_sharp,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    Text("View more details"),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
