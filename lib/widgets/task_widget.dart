import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String text;
  final Color color;

  const TaskWidget({ Key? key, required this.text, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 16,
      decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(0),
      ),
      child: Center(
        child: Text(text, style: TextStyle(
          color: color,
          fontSize: 20,
          ),),
      ),
    );
  }
}