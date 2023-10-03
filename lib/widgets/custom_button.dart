import 'package:flutter/material.dart';

import 'package:myfirstflutterapp/constants/app_colour.dart';

final ButtonStyle buttonPrimary = TextButton.styleFrom(
  minimumSize: Size(20, 10),
  backgroundColor: black10,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
  ),
);
