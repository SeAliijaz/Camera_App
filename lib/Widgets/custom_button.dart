import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? text;
  IconData? icon;

  CustomButton({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(text ?? "text"),
      ),
    );
  }
}
