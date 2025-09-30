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
    floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.blue,
    elevation: 10,
    child: Icon(Icons.add),
    onPressed: () {
    MySnackBar("Add New Item", context);
    },
    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: 1,
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(
    icon: Icon(Icons.contact_emergency), label: "Contact"),
    BottomNavigationBarItem(
    icon: Icon(Icons.verified_user), label: "Profile"),
    ],
    onTap: (int index) {
    if (index == 0) {
    MySnackBar("Home", context);
    } else if (index == 1) {
    MySnackBar("Contact", context);
    } else if (index == 2) {
    MySnackBar("Profile", context);
    }
    }),
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
