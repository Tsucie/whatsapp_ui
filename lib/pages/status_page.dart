import 'package:flutter/material.dart';
import 'story_view_page.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('Assets/img/avatar5.png'),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "Status Saya",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Ketuk untuk menambahkan status"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Pembaruan yang telah dilihat",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.greenAccent,
                      foregroundImage: NetworkImage("Assets/img/24.jpg", scale: 20),
                    ),
                    title: Text(
                      "Stephen (Fullstack Dev)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("34 menit yang lalu"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.greenAccent,
                      foregroundImage: NetworkImage("Assets/img/33.jpg", scale: 20),
                    ),
                    title: Text(
                      "Ibuk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("40 menit yang lalu"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.greenAccent,
                      foregroundImage: NetworkImage("Assets/img/21.jpg", scale: 20),
                    ),
                    title: Text(
                      "Ucok",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("44 menit yang lalu"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Pembaruan yang dibisukan",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.greenAccent,
                      foregroundImage: NetworkImage("Assets/img/18.jpg", scale: 20),
                    ),
                    title: Text(
                      "Sang Mantan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("56 menit yang lalu"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}