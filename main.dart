import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title: Center(child: Text("SNACKBAR APP",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.black),),),
    backgroundColor: Colors.grey,
    ),
    body:Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.yellowAccent,
              Colors.red,
            ],
          )
      ),
    child: Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.black),
          overlayColor: WidgetStateProperty.all(Colors.white70),
          foregroundColor: WidgetStateProperty.all(Colors.grey),
         
        ),onPressed: (){
        final snackbar = SnackBar(
          duration: Duration(milliseconds: 7000),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            action: SnackBarAction(label: "Undo",textColor: Colors.grey, onPressed: () {},),
            backgroundColor: Colors.black,
            content: Center(child: Text("This is an error",style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color: Colors.grey),)));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
        child: Text("Show Snackbar",),),
    ),
    ),

    );

  }
}
