import 'package:flutter/material.dart';
import 'package:flutter_ui_test/helpers.dart';

class HomePage extends StatelessWidget {
  final buttonHeight = 125.0;

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
              child: ListTile(

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

            ),
          ),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[

// Background Stack layer,
// Contains SizedBox and Dog's avatar below
              SizedBox(
                height: 100,
                child: Column(
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
                ),
                flex: 10,
              ),
              Expanded(
                child: SizedBox(
                  child: VerticalDivider(
                    width: 1,
                    color: Colors.black,
                  ),
                  height: 10,
                ),
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
                ),
                flex: 10,
              ),
              Expanded(
                child: SizedBox(
                  child: VerticalDivider(
                    width: 1,
                    color: Colors.black,
                  ),
                  height: 10,
                ),
              ),
              Expanded(
                flex: 10,
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

          Container(
            color: Colors.black12,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

// Buttons
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: buttonHeight,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          //color: Colors.white,
                          height: buttonHeight,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text('Button 1'),
                            ),
                            onPressed: () async {
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
                          height: buttonHeight,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: buttonHeight,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text('Button 2'),
                            ),
                            onPressed: () async {
                              await confirmDialog(
                                  context,
                                  title: 'Button 2',
                                  content: 'You\'ve pressed button 2'
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: buttonHeight,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: buttonHeight,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text('Button 3'),
                            ),
                            onPressed: () async {
                              await confirmDialog(
                                  context,
                                  title: 'Button 3',
                                  content: 'You\'ve pressed button 3'
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: buttonHeight,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: buttonHeight,
                          child: FlatButton(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text('Button 4'),
                            ),
                            onPressed: () async {
                              await confirmDialog(
                                  context,
                                  title: 'Button 4',
                                  content: 'You\'ve pressed button 4'
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: buttonHeight,
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

// Dog pictures zone
                  ListTile(
                    trailing: Text("Dog pictures zone"),
                  ),
                  SizedBox(
                    height: 400,
                  )
                ],
              ),
            ),
          ),
        ],
      ),

// Bottom bar
      bottomNavigationBar: BottomAppBar(
//        shape: AutomaticNotchedShape(BeveledRectangleBorder(), StadiumBorder(),),
          child: Container(
            padding: EdgeInsets.all(1),
            height: 70,
            child: Row(
              children: <Widget>[
                //0
                Expanded(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Icon(Icons.shopping_cart,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Text(
                            "shopping",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                      ],
                    ),
                    onPressed: () => _onTap(0, context),
                  ),
                ),

                //1
                Expanded(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Icon(Icons.pets,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Text(
                            "activities",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                      ],
                    ),
                    onPressed: () => _onTap(1, context),
                  ),
                ),

                //2
                Expanded(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Icon(Icons.home,
                            size: 20,
                            color: Colors.red,
                          ),
                        ),

                        SizedBox(
                          height: 45,
                        ),
                        Expanded(
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                                color: Colors.red,

                              ),
                            )
                        )


                      ],
                    ),
                    onPressed: () => _onTap(2, context),
                  ),
                ),

                //3
                Expanded(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Icon(Icons.radio_button_unchecked,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Text(
                            "protection",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                      ],
                    ),
                    onPressed: () => _onTap(3, context),
                  ),
                ),

                //4
                Expanded(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Icon(Icons.pets,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Text(
                            "health",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                      ],
                    ),
                    onPressed: () => _onTap(4, context),
                  ),
                ),
              ],
            ),
          )

      ),
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
