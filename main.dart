
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: NewMyHome(),
     ); //equal to bootstrap
  }
}

class NewMyHome extends StatefulWidget {
  const NewMyHome({ Key? key }) : super(key: key);



  @override
  _NewMyHomeState createState() => _NewMyHomeState();
}

class _NewMyHomeState extends State<NewMyHome> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello World"),),
      body: Container(
        child: Center(child: Text("$counter", 
        style: TextStyle(color: Colors.pink, fontSize: 90))),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          }); //counter = counter + 1;

        }
      ),
    );
  }
}
