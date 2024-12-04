import 'package:fantasy/features/fantasy/presentation/views/fantasy.dart';
import 'package:fantasy/features/home/presentation/views/widgets/home_body.dart';
import 'package:fantasy/features/statics/presentation/views/statics.dart';
import 'package:flutter/material.dart';

class Constants {
  static List<Widget> items = const [
    HomeBody(),
    Fantasy(),
    Statics()
  ];
}
