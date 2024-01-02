import 'package:flutter/material.dart';

class capp extends StatefulWidget {
  const capp({super.key});

  @override
  State<capp> createState() => _cappState();
}

class _cappState extends State<capp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
          child: Container(
              child: Text("$count",
                  style:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.bold)))),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            child: Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (count >= 1) {
                  count = count - 1;
                } else {
                  Text("$count",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold));
                }
              });
            },
            child: Icon(Icons.remove_circle),
          ),
        ],
      ),
    );
  }
}
