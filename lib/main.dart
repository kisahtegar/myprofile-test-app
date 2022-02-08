import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Project',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int level = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/my.png'),
                  radius: 65,
                ),
              ),
              Divider(
                height: 40,
                color: Colors.grey[850]
              ),
              Text(
                'Name :',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Kisah Tegar Putra Abdi',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontSize:25
                ),
              ),
              SizedBox(height: 15),
              Text(
                'No.hp :',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '082213214214',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2,
                  fontSize: 25
                )
              ),
              Divider(height: 40, color: Colors.grey[850]),
              Center(
                child: Text(
                  'DATA\n',
                  style: TextStyle(
                    color: Colors.grey[100],
                    letterSpacing: 2,
                    fontSize:15
                  )
                )
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      'E-mail\n\nNPM\n\nNIK\n\nAlamat', 
                      style: TextStyle(color: Colors.grey[100], fontFamily: 'Roboto')
                    ),
                  ),
                  SizedBox(width:5),
                  Container(
                    child: Text(
                      ' : UwU@gmail.com\n\n : 202180AFW41\n\n : 460SDAWADAW603DAW\n\n : JL. Kemana 3 Bumi Mars 3', 
                      style: TextStyle(color: Colors.grey[100], fontFamily: 'Roboto')
                    ),
                  ),  
                ],
              ),
              SizedBox(height:70),
              Row(
                children: <Widget>[
                  Text('Level : ', style: TextStyle(color: Colors.grey[100], fontFamily: 'Roboto')),
                  Text(
                    '$level',
                    style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.amberAccent,
                      fontSize: 25
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {level +=1;});},
        child:Icon(Icons.add),
        backgroundColor: Colors.grey[800]
      )
    );
  }
}