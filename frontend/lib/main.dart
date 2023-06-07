import 'package:flutter/material.dart';
import 'package:frontend/color.dart';
import 'package:frontend/index.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primary
      ),
      home: IndexPage(),
    )
);

