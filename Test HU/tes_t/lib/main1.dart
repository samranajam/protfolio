import 'package:flutter/material.dart';
import 'package:tes_t/main2.dart';

class Important extends StatefulWidget {
  const Important({super.key});

  @override
  State<Important> createState() => _ImportantState();
}

class _ImportantState extends State<Important> {
  final firebase_connect Firebase_Connect = firebase_connect();

  final TextEditingController _editingController = TextEditingController();
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _textEditingController = TextEditingController();
  void openb() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _editingController,
                  ),
                  TextField(
                    controller: _controller,
                  ),
                  TextField(
                    controller: _textEditingController,
                  )
                ],
                
              ),
              actions: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  onPressed: () {
                    Firebase_Connect.addemp1(
                        _editingController.text,
                        int.parse(_controller.text),
                        int.parse(_textEditingController.text));
                    _editingController.clear();
                    _controller.clear();
                    _textEditingController.clear();

                    Navigator.pop(context);
                  },
                  child: Text("ADD"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employees"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openb,
        child: Icon(Icons.add),
      ),
    );
  }
}
