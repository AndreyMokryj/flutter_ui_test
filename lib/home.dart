import 'package:flutter/material.dart';
import 'package:flutter_ui_test/helpers.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[

// Painter
            CustomPaint(
              painter: ShapesPainter(),
              child: SizedBox(
                height: 120,
                child: ListView(
                  children: <Widget>[
                    ListTile(

// Icons
                      leading: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        iconSize: 20,
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        iconSize: 20,
                      ),

// Logo
                      title: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            height: 80,
                            child: Image.asset("assets/logo.png"),
                          ),
                        ],
                      ),

                    ),
//                  Image.asset("assets/logo.png"),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[

// Background Stack layer,
// Contains SizedBox and Dog's avatar below
                SizedBox(
                  height: 100,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),

// Dog's circle avatar
                      CircleAvatar(
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/dog.png"
                                )
                            ),
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        radius: 35,
                      ),
                    ],
                  ),
                ),

// Foreground Stack layer, contains Person's avatar
                CircleAvatar(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/john-doe.jpg"
                          )
                      ),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                  radius: 20,
                ),
              ],
            ),

// Another elements
            ListTile(title: Text("biugeiurg"),),
          ],
        ),

//      Navigation bar
        bottomNavigationBar: BottomNavigationBar(
//          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: 2,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(
            decoration: TextDecoration.underline,
          ),

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text(
                "shopping",
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              title: Text(
                "activities",
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "home",
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.refresh),
              title: Text(
                "protection",
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              title: Text(
                "healthcare",
              ),
            ),
          ],
          onTap: (index) => _onTap(index, context),
        )
    );
  }

  void _onTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.of(context).pushNamed("/shopping");
        break;
      case 1:
        Navigator.of(context).pushNamed("/activities");
        break;
      case 2:
        Navigator.of(context).pushNamed("/");
        break;
      case 3:
        Navigator.of(context).pushNamed("/protection");
        break;
      case 4:
        Navigator.of(context).pushNamed("/health-care");
        break;
    }
  }
}
