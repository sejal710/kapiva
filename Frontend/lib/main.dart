import 'package:flutter/material.dart';
import 'package:my_app_two/pages/index.dart';
import 'package:my_app_two/theme/color.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme : ThemeData(
    primaryColor: primary
  ),
  home :  IndexPageState(),
));
