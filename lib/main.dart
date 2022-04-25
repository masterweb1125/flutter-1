import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  State<MyHomeApp> createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  void buttonpressed(String name) {
    Toast.show(
      "name: " + name,
      gravity: 2,
      duration: 3,
    );
  }

  void floatbutton(String name) {
    Toast.show(
      "float: " + name,
      gravity: 1,
      duration: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('programming knowledge'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
        'asset/my.png',
        alignment: Alignment.center,
        
        // height: 100.0,
        // width: 100.0,
        // frameBuilder: (BuildContext context, Widget child, _,
        //     bool wasSynchronouslyLoaded) {
        //   return Container(
        //     padding: const EdgeInsets.all(30.0),
        //     decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),       
        //     child: child,
        //   );
        // },
      ),
      ),
      //     child: Container(
      //   constraints: BoxConstraints(
      //       maxHeight: 300, minHeight: 100, maxWidth: 200, minWidth: 100),
      //   width: double.infinity,
      //   height: double.infinity,
      //   margin: const EdgeInsets.all(20),
      //   padding: const EdgeInsets.all(10),
      //   child: Text(
      //     "programming language!",
      //     textAlign: TextAlign.end,
      //   ),
      //   decoration: BoxDecoration(
      //     color: Colors.red,
      //     shape: BoxShape.rectangle,
      //     borderRadius: BorderRadius.circular(10.0),
      //   ),
      // )
      //     child: Ink(

      //   child: FlatButton.icon(
      //       onPressed: () => buttonpressed("Jhon"),
      //       icon: Icon(Icons.android),
      //       label: Text("android"),
      //       disabledTextColor: Colors.cyan,
      //       color: Colors.red,
      //       ),

      // )
      //     child: IconButton(
      //   onPressed: () => buttonpressed("John!"),
      //   icon: Icon(Icons.add),
      //   color: Colors.red,
      //   iconSize: 100,
      //   splashColor: Colors.green,
      //   padding: EdgeInsets.all(20.0),
      //   tooltip: "description of the button!",
      //   disabledColor: Colors.cyan,

      // )

      // child: OutlineButton(
      //   onPressed: () => buttonpressed("name"),
      //   highlightElevation: 3,
      //   child: Text("press me"),
      //   borderSide: BorderSide(
      //     color : Colors.red,
      //     width : 5.0,
      //   )
      // ),
      //     child: RaisedButton(
      //   onPressed: () => buttonpressed("name"),
      //   child: Icon(
      //     Icons.add,
      //     size: 15,
      //     color: Colors.black,
      //     semanticLabel: "icon",
      //   ),
      //   color: Colors.red,
      //   colorBrightness: Brightness.dark,
      //   disabledColor: Colors.cyan,
      //   elevation: 10,
      // )

      // child: RichText(
      //     text: TextSpan(
      //         text: "programming ",
      //         style: TextStyle(
      //           color: Colors.cyan,
      //           fontSize: 20,
      //         ),
      //         children: <TextSpan>[
      //             TextSpan(
      //               text: "Language:",
      //               style: TextStyle(
      //               color: Colors.red,
      //               fontSize: 40,
      //           ),
      //                   ),
      //                   TextSpan(
      //               text: "Flutter",
      //               style: TextStyle(
      //               color: Colors.blue,
      //               fontSize: 30,
      //           ),
      //                   )

      // ]
      // )
      // )
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Add"),
        icon: Icon(Icons.add),
        onPressed: () => floatbutton("floatbutton!"),
        backgroundColor: Colors.red[300],
        tooltip: "Tooltip!",
      ),
    );
  }
}
