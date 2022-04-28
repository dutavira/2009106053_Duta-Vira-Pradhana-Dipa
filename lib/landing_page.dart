import 'package:flutter/material.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/home.dart';

class Landing extends StatelessWidget {
  const Landing({ Key? key }) : super(key: key);


  // Untuk tampilan slide
  Widget myContainer(){
    return Image.asset("assets/pertama.png", width: 350, alignment: Alignment.center, fit: BoxFit.fill,);
  }

  Widget myContainer2(){
    return Image.asset("assets/kedua.png", width: 350, alignment: Alignment.center,);
  }

  Widget myContainer3(){
    return Image.asset("assets/ketiga.png", width: 350, alignment: Alignment.center,);
  }

  Widget myContainer4(){
    return Image.asset("assets/last.png", width: 350, alignment: Alignment.center,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MangaDut", style: TextStyle(color: Color.fromARGB(255, 152, 0, 0), fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: ListView(
        children: [
          Column(
            //Justify Content
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Align Items
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //menampilkan slide
                    myContainer(),
                    myContainer2(),
                    myContainer3(),
                    myContainer4(),
                  ],
                ),
              ),

              //Kalimat pendukung
              Container( 
                padding: EdgeInsets.all(20),
                child: Text(
                  "Baca Manga Favoritmu Dimana Saja",
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.bold, 
                    color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
              ),

              //Teks & Ikon Swipe Up
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                width: 200,
                height: 100,
                child: Column(
                  children: [
                    Text("Swipe Up", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 103, 15, 15), fontWeight: FontWeight.bold),),
                    new Icon(Icons.expand_less, size: 30, color:Color.fromARGB(255, 103, 15, 15) ,),
                  ]
                ), 
              ),

              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                width: 300,
                height: 50,
                child: Text(
                  "Nikmati Membaca Manga\nHanya Dalam Genggaman Mu",
                  textAlign: TextAlign.left, 
                  style: TextStyle(
                    fontSize: 20, 
                    color: Color.fromARGB(255, 255, 255, 255), 
                    fontWeight: FontWeight.bold),
                    ),
                ),

              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Image.asset("assets/landingpage.png", width: 300, height: 300, alignment: Alignment.center,),
                ), 

              Container(
                margin: EdgeInsets.only(top: 80),
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder:(_) => HalHome(),
                        ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Mulai Sekarang"),
                      ),
                    ],
                  ), 
                  
                  style: ElevatedButton.styleFrom(
                    primary:Color.fromARGB(255, 152, 0, 0),
                    onPrimary: Colors.black,
                  ),
                ),
              ),
            

              
              //bottom bar
              Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                width: 600,
                height: 25,
                decoration: BoxDecoration(   
                  color: Color.fromARGB(255, 103, 15, 15),
                ),
                child: Text(
                  "© Duta Vira Pradhana Dipa - 2009106053",
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    fontSize: 10, 
                    color: Color.fromARGB(255, 255, 255, 255), 
                    fontWeight: FontWeight.bold),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}