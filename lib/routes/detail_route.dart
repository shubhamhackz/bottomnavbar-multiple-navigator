import 'package:flutter/material.dart';

class DetailRoute extends StatelessWidget {
  DetailRoute({this.textEditingController, this.index, this.key});

  final TextEditingController textEditingController;
  final int index;
  final Key key;

  onBackPressed(var navigatorKey) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Route for ${index + 1} Item'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: TextField(controller: textEditingController),
      ),
    );
  }
}
