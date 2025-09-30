    import 'package:flutter/material.dart';
    
    void main() {
    runApp(MyApp());
    }
    
    class MyApp extends StatelessWidget {
    const MyApp({super.key});
    
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.amber),
    darkTheme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: HomeActivity(),
    );
    }
    }
    
    class HomeActivity extends StatelessWidget {
    HomeActivity({super.key});
    
    MySnackBar(messege, context) {
    return ScaffoldMessenger.of(context)
    .showSnackBar(SnackBar(content: Text(messege)));
    }
    
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontSize: 12),
    padding: EdgeInsets.all(10),
    elevation: 10,
    backgroundColor: Colors.green,
    foregroundColor: Colors.white);
    
    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Flutter Form'),
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Padding(
    padding: EdgeInsets.all(10),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(), label: Text('First Name')),
    ),
    ),
    Padding(
    padding: EdgeInsets.all(10),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(), label: Text('Last Name')),
    ),
    ),
    Padding(
    padding: EdgeInsets.all(10),
    child: TextField(
    decoration: InputDecoration(
    border: OutlineInputBorder(), label: Text('Email')),
    ),
    ),
    Padding(
    padding: EdgeInsets.all(10),
    child: ElevatedButton(
    style: buttonStyle,
    onPressed: () {
    MySnackBar("Submitted Successfully", context);
    },
    child: Text(
    "Submit",
    textAlign: TextAlign.center,
    )),
    ),
    ],
    ),
    );
    }
    }
