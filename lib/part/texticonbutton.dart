import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final IconData icon;

  TextIconButton({
    this.onPressed,
    this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 12,
        ),
      ),
      onPressed: onPressed,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 24,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
