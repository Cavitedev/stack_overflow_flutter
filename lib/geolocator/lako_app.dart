import 'package:flutter/material.dart';

class LakoApp extends StatefulWidget {


  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<LakoApp> {

  late int initialPosition;

  // @override


  Future getInitialPosition <Position>() async {
    initialPosition = await Future.delayed(Duration(seconds: 2), (){
      return 5;
    });
    return initialPosition;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: FittedBox(
            child: Text('Lako-Lako: Vendors sa area'),
          ),
          actions: <Widget>[
            TextButton.icon(

              icon: Icon(Icons.person),
              label: Text('Mag Log-out'),
              onPressed: () async {
              },
            )
          ],
          backgroundColor: Colors.brown[700],
        ),
        // bottomNavigationBar: BottomAppBar(

        persistentFooterButtons: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                //food and drinks button
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.brown,
                      primary: Colors.white),

                  onPressed: () {}, child: Text('Nam at Nom')),
              TextButton(
                //Items
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.brown,
                      primary: Colors.white),

                  onPressed: () {}, child: Text('Anik-anik')),

              TextButton(
                //Serbisyo
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.brown,
                      primary: Colors.white),
                  onPressed: () {}, child: Text('Serbisyo')),
            ],
          ),

        ],
        body:

        FutureBuilder(

            future: getInitialPosition(),
            builder: (context, snapshot) {
               return Text(initialPosition.toString());

            }
        )
    );
  }
  }