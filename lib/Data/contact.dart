import 'package:flutter/material.dart';

class Contact {
  Contact(
      {required this.name,
      required this.profile,
      required this.about,
      required this.notiCount,
      required this.enableStatus,
      required this.enableCall});
  String name;
  Image profile;
  String about;
  int notiCount = 0;
  bool enableStatus = true;
  bool enableCall = true;
}
