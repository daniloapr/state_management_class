import 'package:flutter/material.dart';
import 'package:statemanagementsclass/scenes/components/empty_list_screen.dart';
import 'package:statemanagementsclass/scenes/components/loading_list_screen.dart';

class ListExampleScreen extends StatefulWidget {
  @override
  _ListExampleScreenState createState() => _ListExampleScreenState();
}

class _ListExampleScreenState extends State<ListExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Example'),),
        body: EmptyListScreen(),
    );
  }
}
