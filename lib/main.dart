import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'calendar.dart';
import 'teams.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mia prima app',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FIFD")),
      body: const Center(
        child: WebView(
          initialUrl: 'https://www.fifd.it',
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('./lib/assets/images/fifd_logo.png'),
                    fit: BoxFit.fitWidth),
              ),
              child: null, //Text("FIFD"),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home())),
            ),
            ListTile(
              title: const Text("Teams"),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Teams())),
            ),
            ListTile(
              title: const Text("Calendar"),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calendar())),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: const Text("Hi!"),
        foregroundColor: Colors.black,
        backgroundColor: Colors.green,
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  // flutter defined function
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text("Yay, pressed!"),
    action: SnackBarAction(
      label: 'Halo :)',
      onPressed: () {},
    ),
  ));
}
