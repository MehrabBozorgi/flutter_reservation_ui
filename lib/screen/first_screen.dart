import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camp_ui/screen/Detail_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange[300],
                      child: Image.asset(
                        'avatar1.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Welcome User :',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 150,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            'Mehrab Bozorgi',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.notifications_rounded,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Search your favorite',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.orange[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.view_headline,
                          size: 30,
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz_rounded,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'camp.jpg',
                          width: MediaQuery.of(context).size.width - 50,
                          height: 375,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        '\$ 180',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          child: Text(
                            'Camp in jungle',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white70,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Taiga in Quebec',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 15,
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'avatar2.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                          backgroundColor: Colors.yellow,
                        ),
                        CircleAvatar(
                          child: Image.asset(
                            'avatar1.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          backgroundColor: Colors.green,
                        ),
                        CircleAvatar(
                          child: Image.asset(
                            'avatar2.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          backgroundColor: Colors.purpleAccent,
                        ),
                        CircleAvatar(
                          child: Image.asset(
                            'avatar1.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        Text(
                          'visitors',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
