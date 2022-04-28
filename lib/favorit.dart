import 'package:flutter/material.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/home.dart';

class HalFav extends StatefulWidget {
  const HalFav({ Key? key }) : super(key: key);

  @override
  State<HalFav> createState() => _HalFavState();
}

class _HalFavState extends State<HalFav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Favorit",
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 103, 15, 15), fontWeight: FontWeight.bold),
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