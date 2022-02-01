import 'package:flutter/material.dart';

Color getColour(BuildContext context, double percent) {
  if (percent >= .50) {
    return Theme.of(context).primaryColor;
  } else if (percent >= 0.25) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}
