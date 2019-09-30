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

// 3 text captions
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      "col1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: SizedBox(
                      child: VerticalDivider(
                        width: 1,
                        color: Colors.black,
                      ),
                      height: 10,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "col2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    trailing: SizedBox(
                      child: VerticalDivider(
                        width: 1,
                        color: Colors.black,
                      ),
                      height: 10,
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "col3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),

// Dog pictures zone
            Container(
//              height: 300,
              color: Colors.black12,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 150,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.white,
                            height: 150,
                            child: FlatButton(
                              child: Text("Button 1"),
                              onPressed: () async{
                                await confirmDialog(
                                    context,
                                    title: 'Button 1',
                                    content: 'You\'ve pressed button 1'
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 150,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.white,
                            height: 150,
                            child: FlatButton(
                              child: Text("Button 2"),
                              onPressed: () async{
                                await confirmDialog(
                                    context,
                                    title: 'Button 2',
                                    content: 'You\'ve pressed button 2'
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 150,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.white,
                            height: 150,
                            child: FlatButton(
                              child: Text("Button 3"),
                              onPressed: () async{
                                await confirmDialog(
                                    context,
                                    title: 'Button 3',
                                    content: 'You\'ve pressed button 3'
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 150,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            color: Colors.white,
                            height: 150,
                            child: FlatButton(
                              child: Text("Button 4"),
                              onPressed: () async{
                                await confirmDialog(
                                    context,
                                    title: 'Button 4',
                                    content: 'You\'ve pressed button 4'
                                );
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 150,
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.green,
                      height: 1,
                    ),
                    SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ),
            ),
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
