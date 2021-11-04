import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const TodoaApp());
}

class TodoaApp extends StatelessWidget {
  const TodoaApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TodoaApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 4.0), //(x,y)
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 0.0),
                  child: const Text(
                    'Item Text',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
