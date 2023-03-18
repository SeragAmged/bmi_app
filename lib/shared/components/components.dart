import 'package:bmi_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

Widget defaultButton(
        {double width = double.infinity,
        Color color = accentColor,
        required VoidCallback function,
        required String text}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        textColor: Colors.white,
        onPressed: function,
        child: Text(text),
      ),
    );
