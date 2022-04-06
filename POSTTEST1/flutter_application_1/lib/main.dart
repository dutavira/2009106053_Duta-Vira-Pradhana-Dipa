import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("POSTTEST 1 Duta Vira"),
        backgroundColor: Color.fromARGB(255, 74, 91, 243)
      ),
      body: Container(
        padding: const EdgeInsets.all(1),
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.5,
            colors: <Color>[
              Color.fromARGB(255, 35, 10, 136),
              Color.fromARGB(255, 5, 198, 228),  
              Color.fromARGB(255, 35, 10, 136),
              Color.fromARGB(255, 5, 198, 228),  
              Color.fromARGB(255, 35, 10, 136),
              Color.fromARGB(255, 5, 198, 228),  
              Color.fromARGB(255, 35, 10, 136),
            ]
          ),
        ),
        
        child: Container(
          width: lebar / 1.5,
          height: tinggi / 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: RadialGradient(
            radius: 1.0,
            colors: <Color>[
              Color.fromARGB(255, 35, 10, 136),
              Color.fromARGB(255, 5, 198, 228),   
                        
            ]
          ),
            border: Border.all(
              color: Color.fromARGB(255, 244, 244, 244),
              width: 5,
            ),
            borderRadius: BorderRadius.circular(10),
          ),

          child: const Text(
            "Duta Vira Pradhana Dipa\n2009106053\nPemrograman Mobile",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          )
        ),
      ),
    );
  }
}