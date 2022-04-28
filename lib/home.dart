import 'package:flutter/material.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/favorit.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/landing_page.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/utama.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/favorit.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/baru.dart';
import 'package:posttest4_2009106053_duta_vira_pradhana_dipa/survei.dart';


class HalHome extends StatefulWidget {
  const HalHome({ Key? key }) : super(key: key);

  @override
  State<HalHome> createState() => _HalHomeState();
}

class _HalHomeState extends State<HalHome> {
  int _index = 0;
  static final List<Widget> _pages = [
    //manggil widget buat tampilan pages
    const HalUtama(),
    const HalBaru(),
    const HalFav(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text("MangaDut", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          backgroundColor: Color.fromARGB(255, 103, 15, 15),
      ),
      
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
              Container(
                height: 200,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 103, 15, 15),
                  ),
                  child: Icon(Icons.menu_book, size: 100, color: Colors.white,),
                ),
              ),
              ListTile(
              title: const Text(
                "Profil",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.people_alt_rounded,
                color: Colors.white,
              ),
              onTap: () {},
            ),

            ListTile(
              title: const Text(
                "Disimpan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              onTap: () {},
            ),

            ListTile(
              title: const Text(
                "Usulkan Manga",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.sms,
                color: Colors.white,
              ),
              onTap: () {},
            ),

            ListTile(
              title: const Text(
                "Ikuti Survei",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.contact_support,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HalSurvei(),
                  ),
                );
              },
            ),

            ListTile(
              title: const Text(
                "Pengaturan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 103, 15, 15),
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },

        fixedColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Utama"),
          BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: "Terbaru"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favorit"),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}