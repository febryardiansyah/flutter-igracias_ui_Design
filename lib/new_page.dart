import 'package:flutter/material.dart';

class newPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[profile(),
                isiProfile(),],
            ),
            pemberitahuan(),
          ],
        ),
      ),
    );
  }
  Widget profile(){
    return Container(
      height: 270,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.red,Colors.red],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25,left: 10),
            child: Image(image: AssetImage('images/logo_igracias.png'),),
          ),
          SizedBox(width: 20,),
          Padding(
            padding: EdgeInsets.only(top: 35),
            child: Text('Beranda',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 25, right: 10),
            child: Row(
              children: <Widget>[
                Text('Log Out',style: TextStyle(color: Colors.white),),
                IconButton(icon: Icon(Icons.exit_to_app,color: Colors.white,),onPressed:(){},)
              ],
            ),
          )
        ],
      )
    );
  }
  Widget isiProfile(){
    return Positioned(
      left: 100,
      right: 100,
      top: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              image: DecorationImage(image: AssetImage('images/zaynMalik.jpeg'),fit: BoxFit.fill)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text('Febry Ardiansyah',style: TextStyle(color: Colors.white),),
                Text('18104009',style: TextStyle(color: Colors.white),),
                Text('Mahasiswa',style: TextStyle(color: Colors.white),),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget pemberitahuan(){
    return Container(
      height: 345,
      margin: EdgeInsets.only(left: 10,right: 10,),
//      color: Colors.red,
      child: ListView(
        children: <Widget>[
          _tile(Icons.notifications,'09-Oct-2019','FAQ Igracias Mobile',Icons.arrow_forward_ios),
          _tile(Icons.notifications,'05-Aug-2019','Informasi Registrasi Semester Ganjil',Icons.arrow_forward_ios),
          _tile(Icons.notifications,'15-Feb-2018','Dear Student',Icons.arrow_forward_ios),
          _tile(Icons.notifications,'14-Feb-2017','Proses Pengambilan KSM',Icons.arrow_forward_ios),
          _tile(Icons.notifications,'14-Feb-2017','Kalender Akademik 2016/2017',Icons.arrow_forward_ios),
          _tile(Icons.notifications,'03-Sep-2015','Selamat Datang',Icons.arrow_forward_ios),
        ],
      ),
    );
  }
  Widget _tile(IconData icon,String tgl, String pemberitahuan,IconData lastIcon){
    return InkWell(
      onTap:(){
        print('Tapped');
      },
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(5),
        child: ListTile(
          leading: Icon(icon,color: Colors.red,),
          title: Text(tgl,style: TextStyle(color: Colors.red),),
          subtitle: Text(pemberitahuan,style: TextStyle(color: Colors.black),),
          trailing: Icon(lastIcon,color: Colors.red,),
        ),
      ),
    );
  }
}