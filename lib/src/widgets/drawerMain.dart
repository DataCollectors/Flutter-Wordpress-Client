import 'package:flutter/material.dart';

Widget drawerMain(context) {
  debugPrint("Drawer");
  return Drawer(
    elevation: 10.0 ,
    child: ListView(
//      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.zero ,
      children: <Widget>[

        DrawerHeader(
          child: Text("data"),
          decoration: BoxDecoration(
            // color: Colors.amberAccent,
          ),
        ),

        socialBtn("twitter", Icons.access_alarms, Colors.indigo[900]),
        drawerBtnPadding(),
        ExpansionTile(
          initiallyExpanded: true,
          title: Text("Categories"),
          children: <Widget>[
            drawerBtnPadding(),
            drawerBtn(" CheckOFFLINE", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/MainPage'); 
            }),
            drawerBtnPadding(),
            drawerBtn(" insta", () {
              Navigator.of(context).pop(); 
              Navigator.pushNamed(
                  context, '/InstaPage');
            }),
            drawerBtnPadding(),
            
          ],

        ),
        drawerBtn("text", () {
          print('object2');
        }),
      ],
    ),
  );

}



Widget kurdistanCatBtn() {
//String text ;

  return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          elevation: 2.0,
          //textTheme: ButtonTextTheme.primary,
          splashColor: Colors.cyan,
          textColor: Colors.black,
          colorBrightness: Brightness.dark,

          child: Text("په‌ری كوردستان"),

          padding: EdgeInsets.all(20.0),
          animationDuration: Duration(microseconds: 200),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(10.0))),
          color: Colors.amber,
          onPressed: () {},
        ),
      ]);
}

Widget drawerBtn(String text, Function function) {
//String text ;

  return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          elevation: 2.0,
          //textTheme: ButtonTextTheme.primary,
          splashColor: Colors.cyan,
          textColor: Colors.black,
          colorBrightness: Brightness.dark,

          child: Text(text),

          padding: EdgeInsets.all(20.0),
          animationDuration: Duration(microseconds: 200),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(10.0))),
          color: Colors.amber,
          onPressed: function,
        ),
      ]);
}

//btn social
Widget socialBtn(String text, IconData iconData, Color color) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Padding(
        // padding: EdgeInsets.all(20.0),
        //),
        RaisedButton(
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                color: Colors.cyan,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          elevation: 2.0,
          //textTheme: ButtonTextTheme.primary,
          splashColor: Colors.cyan,
          textColor: Colors.black,
          colorBrightness: Brightness.dark,
          padding: EdgeInsets.all(20.0),

          animationDuration: Duration(microseconds: 200),
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(10.0))),
          color: color,
          onPressed: () {},
        ),
      ]);
}

Widget drawerBtnPadding() {
  return Padding(
    padding: EdgeInsets.all(5.0),
  );
}
