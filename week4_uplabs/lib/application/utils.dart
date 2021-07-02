import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;
TextTheme getTextTheme(BuildContext context) => Theme.of(context).textTheme;
