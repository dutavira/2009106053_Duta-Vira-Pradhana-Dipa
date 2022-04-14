import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);


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

              //Intruksi Untuk Login
              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 103, 15, 15),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Silahkan Login Terlebih Dahulu",textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
                ),

              //Teks email/username
              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                width: 250,
                child: Text("Email/Username",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
              ),

              //box untuk memasukan email
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 103, 15, 15),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),

              //teks password
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                width: 250,
                child: Text("Password",textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
              ),

              //box untuk memasukkan password
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 103, 15, 15),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),

              //button untuk submit login
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                width: 100,
                height: 50,
                decoration: BoxDecoration(   
                  color: Color.fromARGB(255, 103, 15, 15),
                  border: Border.all(
                    color: Color.fromARGB(255, 103, 15, 15),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Login",textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
              ),

              //tautan untuk register
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                width: 250,
                child: Text("Belum Punya Akun? Register Sekarang!",textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Color.fromARGB(255, 103, 15, 15), fontWeight: FontWeight.bold),),
              ),

              //bottom bar
              Container(
                margin: EdgeInsets.only(top: 150),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                width: 600,
                height: 25,
                decoration: BoxDecoration(   
                  color: Color.fromARGB(255, 103, 15, 15),
                ),
                child: Text("© Duta Vira Pradhana Dipa - 2009106053",textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}