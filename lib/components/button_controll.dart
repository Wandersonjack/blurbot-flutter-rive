import 'package:flutter/material.dart';



class ButtonControll extends StatelessWidget {
  ButtonControll({@required this.icon, @required this.onPress});
  final IconData icon;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: Color(0xFF31307B),
        ),
        child: Icon(
          icon,
          size: 30,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
