import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  //can also use voidCallBack
  final Function selectHandler;
  final String answer;

  Answers(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: () {
          selectHandler();
        },
        child: Text(answer),
      ),
    );
  }
}
