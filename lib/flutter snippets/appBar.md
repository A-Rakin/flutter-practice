    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';
    
    void main() {
    runApp(const MyApp());
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
    const HomeActivity({super.key});
    
    MySnackBar(messege, context) {
    return ScaffoldMessenger.of(context)
    .showSnackBar(SnackBar(content: Text(messege)));
    }
    
    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.blue,
    title: Text("Invertory App"),
    titleSpacing: 10,
    //centerTitle: true,
    toolbarHeight: 60,
    toolbarOpacity: 1,
    elevation: 50,
    actions: [
    IconButton(
    onPressed: () {
    MySnackBar("comments", context);
    },
    icon: Icon(Icons.comment)),
    IconButton(
    onPressed: () {
    MySnackBar("Settings", context);
    },
    icon: Icon(Icons.settings)),
    IconButton(
    onPressed: () {
    MySnackBar("Email us", context);
    },
    icon: Icon(Icons.email)),
    IconButton(
    onPressed: () {
    MySnackBar("Search for more", context);
    },
    icon: Icon(Icons.search)),
    ],
    ),
    );
    }
    }
