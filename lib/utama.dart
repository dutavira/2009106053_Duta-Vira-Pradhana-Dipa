import 'package:flutter/material.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/home.dart';

class HalUtama extends StatefulWidget {
  const HalUtama({ Key? key }) : super(key: key);

  @override
  State<HalUtama> createState() => _HalUtamaState();
}

class _HalUtamaState extends State<HalUtama> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: size.height * .25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color.fromARGB(255, 103, 15, 15), width: 1),
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage("assets/thumbnail.png"),
                scale: 2,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "Kategori",
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 103, 15, 15)),
              ),
              ),
          ),

          Container(
            height: 144,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8, top: 5),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 103, 15, 15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color.fromARGB(255, 103, 15, 15), width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.sports_martial_arts),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Martial Arts", 
                                    style: TextStyle(
                                      fontSize: 12,
                                      
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8, top: 5),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 103, 15, 15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color.fromARGB(255, 103, 15, 15), width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.fort),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Kingdom", 
                                    style: TextStyle(
                                      fontSize: 12,
                                      
                                    ),
                                  ),
                                ],
                              ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8, top: 5),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 103, 15, 15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color.fromARGB(255, 103, 15, 15), width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.mood),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Comedy", 
                                    style: TextStyle(
                                      fontSize: 12,
                                      
                                    ),
                                  ),
                                ],
                              ),
                              )
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8, top: 5),
                        padding: EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 103, 15, 15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color.fromARGB(255, 103, 15, 15), width: 1),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Love", 
                                    style: TextStyle(
                                      fontSize: 12,
                                      
                                    ),
                                  ),
                                ],
                              ),
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Terpopuler",
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 103, 15, 15)),
              ),
              ),
          ),

          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 8, top: 5, left: 8),
                        padding: EdgeInsets.only(left: 16, right: 16),
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 103, 15, 15),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color.fromARGB(255, 103, 15, 15), width: 2),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image.asset("assets/bc.png")
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}