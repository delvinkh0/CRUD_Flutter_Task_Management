import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/ui/theme.dart';

class MyButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const MyButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ), backgroundColor: primaryClr,
        minimumSize: Size(120, 60),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
