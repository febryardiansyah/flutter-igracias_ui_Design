import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:igracias/dosen_page.dart';
import 'package:igracias/karyawan_page.dart';
import 'new_page.dart';
import 'mahasiswa_page.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget{
  createState(){
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    newPage(),
    Mahasiswa(),
    DosenPage(),
    KaryawanPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: onTabPaped,
        index: _currentIndex,
        color: Colors.red,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.red,
          height: 50,
          animationDuration: Duration(
            milliseconds: 200
          ),
          animationCurve: Curves.bounceInOut,
          items: <Widget>[
            Icon(Icons.home,size: 30,color: Colors.white,),
            Icon(Icons.school,size: 30,color: Colors.white,),
            Icon(Icons.supervisor_account,size: 30,color: Colors.white,),
            Icon(Icons.account_box,size: 30,color: Colors.white,),
          ],
      ),
    );
  }
  void onTabPaped(int Index){
    setState(() {
      _currentIndex = Index;
    });
  }
}