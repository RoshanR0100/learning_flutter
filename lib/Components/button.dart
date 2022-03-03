import 'package:flutter/material.dart';
import 'package:learning_flutter/constants.dart';


class Button extends StatelessWidget {
  final String text;
  final void Function()? press;
  final Color color, textColor;

  const Button({
    Key? key, required this.text, required this.press, this.color = kPrimaryColor, this.textColor = Colors.white,
    
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:  const EdgeInsets.all(16.0),
      child: SizedBox(
        height: size.height * 0.07,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color)),
            onPressed: press,
            child: Text(
                text,
                style: TextStyle(color: textColor)),
          ),
        ),
    );
  }
}