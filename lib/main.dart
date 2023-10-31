
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:agumentik_placement/login.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // if(kIsWeb) {
  //   await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyB_jCCHNoB9na3jERl4dldaPi4DVSG0CJw", appId: "1:829465572115:web:b71d322ad5786ee3ce20e6", messagingSenderId: "829465572115", projectId: "augumentikplace"));
  // }
  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appBar(),
        body: Center(
          child: Column (
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              SizedBox(height: 20),
                _stack_view(context),
                SizedBox(height: 20),
                _row_topcourses(),
                SizedBox(height: 10),
                Container(
                  height: 100,
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 200,
                        color: Colors.purple[600],
                        child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[500],
                        child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[400],
                        child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Container(
                        width: 200,
                        color: Colors.purple[300],
                        child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                    ],
                  ),
                )
              ],
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.lock),
              label: "home page"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: "Courses"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: "Instructor"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Community"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "account"
            )
          ],
        ),
      )
    );
}
}
AppBar _appBar() {
  return AppBar(
    leading: IconButton(
      icon: Image.asset('assets/logo.png'), // You can replace this with your logo
      onPressed: () {
        // Add your logo's action here
      },
    ),
    title: Text('I-learning'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Add your search action here
        },
      ),
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {
          // Add your notifications action here
        },
      ),
    ],
  );
}

Stack _stack_view(BuildContext context) {
  return Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'assets/lap.png', // Replace with your image path
            // width: 400, // Adjust the width as needed
            // height: 200, // Adjust the height as needed
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Container(
                child: Text(
                  'Web & App design',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(height: 16), // Spacing
              ElevatedButton(
                onPressed: () {
                  // Add your button's action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp2())
                  );
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.red)
                        )
                    )
                ),
                child: Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      '120 Science',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10,color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  'Exploring every aspect of Web & App design will tell you',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      );
}

Row _row_topcourses() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Text(
        'Top courses',
        style: TextStyle(fontSize: 18),
      ),
      Container(
        margin: EdgeInsets.only(right: 16),
        child: Text(
          'See All',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
          ),
        ),
      ),
    ],
  );
}
