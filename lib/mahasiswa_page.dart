import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mahasiswa extends StatelessWidget{
  final List<Map<String, dynamic>>_kategori =[
    {'no':'Visi Ittelkom Purwokerto','color':Colors.grey},
    {'no':'Misi Ittelkom Purwokerto','color':Colors.grey},
    {'no':'Pendaftaran Mahasiswa Baru','color':Colors.grey},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            barAtas(),
            artikelList(),
            menuMhs(),
          ],
        ),
      )
    );
  }
  Widget barAtas(){
    return Container(
      height: 80,
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25,left: 10),
            child: Image(image: AssetImage('images/logo_igracias.png'),),
          ),
          SizedBox(width: 50,),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text('Mahasiswa',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 25, right: 10),
            child: Row(
              children: <Widget>[
                Text('Log Out',style: TextStyle(color: Colors.white),),
                IconButton(icon: Icon(Icons.exit_to_app,color: Colors.white,),onPressed:(){},)
              ],
            )
          )
        ],
      ),
    );
  }
  Widget artikelList(){
    return Container(
      height: 180,
      margin: EdgeInsets.all(10),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _kategori.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, i){
         return Container(
           decoration: BoxDecoration(
             border: Border.all(width: 0.1)
           ),
//           color: _kategori[i]['color'],
           child: Center(
             child: Text(
               _kategori[i]['no']
             ),
           ),
         );
        }
      ),
    );
  }
  Widget menuMhs(){
    return Container(
      height: 200,
      width: 400,
//      color: Colors.red,
      margin: EdgeInsets.all(10),
      child: Card(
        elevation: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person,color: Colors.red,size: 35),onPressed:(){},),
                Text('Profil',style: TextStyle(color: Colors.red),),
                Divider(),
                Divider(),
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.schedule,color: Colors.red,size: 35,),onPressed:(){},),
                    Text('Jadwal',style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.description,color: Colors.red,size: 35,),onPressed: (){},),
                Text('Presensi',style: TextStyle(color: Colors.red),),
                Divider(),
                Divider(),
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.score,color: Colors.red,size: 35,),onPressed:(){},),
                    Text('Nilai',style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.save,color: Colors.red,size: 35,),onPressed:(){},),
                Text('Rekap',style: TextStyle(color: Colors.red),),
                Divider(),
                Divider(),
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.chat,color: Colors.red,size: 35,),onPressed:(){},),
                    Text('Chat',style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(icon: Icon(Icons.chrome_reader_mode,color: Colors.red,size: 35,),onPressed:(){},),
                Text('KSM',style: TextStyle(color: Colors.red),),
                Divider(),
                Divider(),
                Column(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.email,color: Colors.red,size: 35,),onPressed:(){},),
                    Text('Pesan',style: TextStyle(color: Colors.red),)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
