import 'package:flutter/material.dart';

class NavModel{
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel(this.page, {required this.navKey});
}