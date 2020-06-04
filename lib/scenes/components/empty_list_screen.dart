import 'package:flutter/material.dart';
import 'package:statemanagementsclass/assets/images/images.dart';

class EmptyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Ops... Lista vazia', style: TextStyle(fontSize: 24),),
          SizedBox(height: 32),
          Image.asset(Images.listEmpty, width: 180,),
        ],
      ),
    );
  }
}
