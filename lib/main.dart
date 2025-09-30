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

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert Title'),
          content: const Text('This is the content of the alert dialog.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Perform an action when 'OK' is pressed
                print('OK button pressed!');
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      elevation: 10,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
