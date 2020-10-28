import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Drawer(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.black87,
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters_opt/p-death-note-light.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    "UserName",
                    style: TextStyle(color: Colors.amber),
                  ),
                  Text(
                    "UserId",
                    style: TextStyle(color: Colors.amber),
                  )
                ],
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              'Favorites',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text(
              'Movies',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.tv),
            title: Text(
              'TV Shows',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.explore_sharp),
            title: Text(
              'Explore',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
           ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          )
        ],
      ),
    ));
  }
}
