import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'IHeal';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(

              child: FittedBox(
                child: Image.asset('assets/logo.png'),
                fit: BoxFit.fill,
              )


            ),
            ListTile(
              title: Text('Ask A Doctor', style: TextStyle(
                fontSize: 25.0

              ),),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => AskDoctor()),
                );
              },
            ),
            ListTile(
              title: Text('Find A Pharmacy'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
              ListTile(
                title: Text('Medical Results'),
                onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);}
                ),
            ListTile(
                title: Text('Appointments'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);}
            ),
            ListTile(
                title: Text('Laboratory Tests'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);}
            ),
            ListTile(
                title: Text('Reviews'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);}
            ),
          ],
        ),
      ),
    );
  }
}

class AskDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TTIITITle'),
      ),
      body: Center(

        child: ElevatedButton(
          onPressed: (){},
        ),
      ),

    );
  }
}
