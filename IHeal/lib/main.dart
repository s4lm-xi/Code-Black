import 'package:flutter/cupertino.dart';
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

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5.0),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  children: [

                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage('https://i.pinimg.com/originals/83/72/e9/8372e957fc617e9e956f116afd3e599b.jpg'),

                        ),
                      ),
                    ),

                    Text('''
            Name: Brad Pit
            
            Age: 57
            
            Height: 1.8 m
            
            ''', style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),),

                  ],
                ),

              ),
            ],
          ),

        ],
      ),



      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(

              child: FittedBox(
                child: Image.asset('assets/logo.jpg'),
                fit: BoxFit.fitWidth,
              )


            ),
            Container(
               margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 5.0)
              ),
              child: ListTile(
                title: Text('Ask A Doctor', style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,


                ),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AskDoctor()),
                  );
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5.0)
              ),
              child: ListTile(
                title: Text('Find A Pharmacy', style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,


                ),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FindPharmacy()),
                  );
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5.0)
              ),
              child: ListTile(
                title: Text('Medical Results', style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,


                ),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MedicalResults()),
                  );
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5.0)
              ),
              child: ListTile(
                title: Text('Appointments', style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,


                ),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AskDoctor()),
                  );
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5.0)
              ),
              child: ListTile(
                title: Text('Laboratory Tests', style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,


                ),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AskDoctor()),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 5.0)
              ),
              child: ListTile(
                title: Text('Reviews', style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,

                ),),
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AskDoctor()),
                  );
                },
              ),
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
        title: Text('Ask A Doctor'),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(8, (index) {
          return Center(
            child: Text(
              'Doctor $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}



class FindPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask A Doctor'),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(8, (index) {
          return Center(
            child: Text(
              'Pharmacy $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}


class MedicalResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Results'),
      ),

      body: Container(
        child: Row(
          children: [
            Image.asset('assets/graph.jpg',
             width: 195, height: 550,),
            Image.asset('assets/graph1.jpg', width: 195, height: 550,),

          ],
        ),
      )
    );
  }
}

