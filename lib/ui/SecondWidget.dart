import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget{
  // final String title;
  // SecondWidget(Key? key, required this.title): super({key: key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      )
      ,
    );
  }


}
