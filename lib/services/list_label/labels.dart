import 'package:flutter/material.dart';

class label extends StatelessWidget {
   String area;

  label({this.area});
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$area',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    // color:Colors.amber
                  )
                ],
              ),
            );
  }
}