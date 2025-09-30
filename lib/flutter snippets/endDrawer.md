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
    
    endDrawer: Drawer(
    child: ListView(
    children: [
    DrawerHeader(
    padding: EdgeInsets.all(0),
    child: UserAccountsDrawerHeader(
    accountName: Text("Abrar Rakin"),
    accountEmail: Text("info@gmail.com"),
    //currentAccountPicture: Image.network(""),
    )),
    ListTile(
    leading: Icon(Icons.home),
    title: Text("Home"),
    onTap: () {
    MySnackBar("Home for Navigation Drawer", context);
    },
    ),
    ListTile(
    leading: Icon(Icons.email),
    title: Text("Email"),
    onTap: () {
    MySnackBar("Email for Navigation Drawer", context);
    },
    ),
    ListTile(
    leading: Icon(Icons.contacts),
    title: Text("Contact"),
    onTap: () {
    MySnackBar("Contact for Navigation Drawer", context);
    },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text("Settings"),
    onTap: () {
    MySnackBar("Settings for Navigation Drawer", context);
    },
    ),
    ],
    ),
    ),
    );
    }
    }
