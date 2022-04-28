import 'package:flutter/material.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/home.dart';

enum Genre { Action, Fantasy, Romance, Magic, Comedy }

class HalSurvei extends StatefulWidget {
  const HalSurvei({Key? key}) : super(key: key);

  @override
  State<HalSurvei> createState() => _HalSurveiState();
}

class _HalSurveiState extends State<HalSurvei> {
  String username = "", umur = "";

  final controllerusername = TextEditingController();
  final controllerumur = TextEditingController();

  Genre genre = Genre.Action;

  @override
  void dispose() {
    controllerusername.dispose();
    controllerumur.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ukuran = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("MangaDut", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          backgroundColor: Color.fromARGB(255, 103, 15, 15),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            
            Container(
              alignment: Alignment.center,
              height: 50,
              margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 103, 15, 15),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "Survei Pengguna MangaDut",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controllerusername,
                    decoration: InputDecoration(
                      hintText: "ex : @anyaforger",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 103, 15, 15),
                      ),
                      icon: Icon(Icons.person, color: Color.fromARGB(255, 103, 15, 15), size: 30,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 103, 15, 15),
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 103, 15, 15),
                        )
                      ),
                      fillColor: Color.fromARGB(255, 0, 0, 0),
                      filled: true,

                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 103, 15, 15),
                      )
                    ),

                    style: TextStyle(
                      color: Color.fromARGB(255, 103, 15, 15),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: controllerumur,
                    decoration: InputDecoration(
                      hintText: "ex : 18",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 103, 15, 15),
                      ),
                      icon: Icon(Icons.child_care, color: Color.fromARGB(255, 103, 15, 15), size: 30,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 103, 15, 15),
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 103, 15, 15),
                        )
                      ),
                      fillColor: Color.fromARGB(255, 0, 0, 0),
                      filled: true,

                      labelText: "Usia",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 103, 15, 15),
                      )
                    ),

                    style: TextStyle(
                      color: Color.fromARGB(255, 103, 15, 15),
                      fontSize: 18,
                    ),
                  ),
                  
                  SizedBox(
                    height: 15,
                  ),

                  Text("Pilih Satu Genre Manga Favorit Kamu :",
                    style: TextStyle(
                        color: Color.fromARGB(255, 103, 15, 15),
                        fontSize: 18,
                        )
                    ),

                  ListTile(
                    title: Text("Action",
                    style: TextStyle(color: Color.fromARGB(255, 103, 15, 15),
                    ),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 103, 15, 15)),
                      groupValue: genre,
                      value: Genre.Action,
                      onChanged: (Genre? value) {
                        setState(() {
                          genre = value ?? Genre.Action;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Fantasy",
                    style: TextStyle(color: Color.fromARGB(255, 103, 15, 15),
                    ),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 103, 15, 15)),
                      groupValue: genre,
                      value: Genre.Fantasy,
                      onChanged: (Genre? value) {
                        setState(() {
                          genre = value ?? Genre.Fantasy;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Romance",
                    style: TextStyle(color: Color.fromARGB(255, 103, 15, 15),
                    ),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 103, 15, 15)),
                      groupValue: genre,
                      value: Genre.Romance,
                      onChanged: (Genre? value) {
                        setState(() {
                          genre = value ?? Genre.Romance;
                        });
                      },
                    ),
                  ),

                  ListTile(
                    title: Text("Magic",
                    style: TextStyle(color: Color.fromARGB(255, 103, 15, 15),
                    ),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 152, 0, 0)),
                      groupValue: genre,
                      value: Genre.Magic,
                      onChanged: (Genre? value) {
                        setState(() {
                          genre = value ?? Genre.Magic;
                        });
                      },
                    ),
                  ),

                  ListTile(
                    title: Text("Comedy", 
                    style: TextStyle(color: Color.fromARGB(255, 103, 15, 15),
                    ),
                    ),
                    leading: Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 103, 15, 15)),
                      groupValue: genre,
                      value: Genre.Comedy,
                      onChanged: (Genre? value) {
                        setState(() {
                          genre = value ?? Genre.Comedy;
                        });
                      },
                    ),
                  ),

                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          username = controllerusername.text;
                          umur = controllerumur.text;
                        });
                        tampilkanKeluaran(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: new Icon(Icons.save),
                          ),
                          Container(
                            child: Text(" Simpan"),
                          ),
                        ],
                      ), 
                      
                      style: ElevatedButton.styleFrom(
                        primary:Color.fromARGB(255, 103, 15, 15),
                        onPrimary: Colors.black,
                      ),
                    ),
                  ),
                  

                ],
              ),
            ),
            //bottom bar
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.bottomCenter,
                width: 400,
                height: 25,
                decoration: BoxDecoration(   
                  color: Color.fromARGB(255, 103, 15, 15),
                ),
                child: Text("© Duta Vira Pradhana Dipa - 2009106053",
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 10, 
                  color: Colors.black, 
                  fontWeight: FontWeight.bold),),
              ),
          ],
        ));
  }
  void tampilkanKeluaran(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: new Text("Berhasil Submit",
          textAlign: TextAlign.center,
          
          ),
          content: Container(
            alignment: Alignment.center,
            height: 250,
            width: 400,
            child: ListView(
              children: [
                Icon(Icons.task_alt, size: 100, color: Color.fromARGB(255, 103, 15, 15)),
                Text("\nUsername      : $username\n"),
                Text("Usia/Umur     : $umur Tahun\n"),
                Text("Genre Favorit : $genre")
              ],
            ),
          ),
          actions: <Widget>[
            new ElevatedButton(
              child: Text("Tutup"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary:Color.fromARGB(255, 103, 15, 15),
              )
            ),
          ],
        );
      }
    );
  }
}