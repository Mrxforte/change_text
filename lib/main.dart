// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomeScreen(),
    );
  }
}

// main screen of the app

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // changing text
  final String? changing_text = 'Old Text';

  final String? changed_text = 'New Text';

  // button' title
  final String? buttons_old_title = 'Change Me';

  final String? buttons_new_title = 'I Changed';

  // Simple bool

  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Change Me'),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 30,
          right: 30,
          left: 30,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(
            0.1,
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Welcome to the app',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black26,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This is very simple app',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black26,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'If you press the change me button',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black26,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'text will be changed!!!',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black26,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isTrue) {
                    isTrue = false;
                  } else {
                    isTrue = true;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "${isTrue == true ? buttons_old_title : buttons_new_title}"
                      .toString(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.amber.shade100,
                    Colors.amber.shade50,
                    Colors.amber.shade200,
                  ],
                ),
              ),
              child: Text(
                "${isTrue == true ? changing_text : changed_text}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isTrue == true ? Colors.red : Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
