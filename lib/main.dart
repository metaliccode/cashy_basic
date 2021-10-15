import 'package:flutter/material.dart';
import 'font_style.dart';
import 'custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // cara menghilangkan tulisan debug
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Cashy App'),
        // cara menampilkan material design harus pake scaffold
        home: Scaffold(
            appBar: AppBar(
              title: Text("Cashy App"),
              backgroundColor: darkBlue,
              // actions: <Widget>[
              //   // Icon(Icons.mail)
              //   IconButton(
              //       onPressed: () {},
              //       icon: Icon(Icons.mail),
              //       color: Colors.yellowAccent)
              // ],
            ),
            body: SafeArea(
                child: Container(
                    // color: Colors.blueGrey,
                    // pading hanya ada di dalam container
                    // margin: EdgeInsets.all(30),
                    margin: EdgeInsets.only(
                        left: 23.0, top: 0, right: 23.0, bottom: 0),
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/bg.png'),
                              height: 200,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
                              child: Text(
                                'Rich Together',
                                style: mainHeader,
                              ),
                            ),
                            Text(
                                'Save your Money Little Bit and we \nwill help to be rich',
                                style: subHeader,
                                textAlign: TextAlign.center)
                          ],
                        )
                      ],
                    )))));
  }
}
