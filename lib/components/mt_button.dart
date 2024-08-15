import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
final String text;

  const MyButton({super.key,
  required this.text,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 270,
        decoration: BoxDecoration(
          color:Colors.amber[900],
          
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
      
      
        child: Center(
          child: Text(text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}