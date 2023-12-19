import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({Key? key,
    required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onPress,
  } ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color
            ),
            child: Center(
              child: Text(title, style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),),
            ),
          ),
        ),
      ),
    );
  }
}