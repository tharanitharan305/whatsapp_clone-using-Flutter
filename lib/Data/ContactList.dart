import 'package:flutter/material.dart';

import 'contact.dart';

List<Contact> contacts = [
  Contact(
      name: 'tharani',
      profile: Image.asset('asstes/profile/p1.png'),
      about: 'Trust',
      notiCount: 0,
      enableCall: true,
      enableStatus: true),
  Contact(
      name: 'Dinakar',
      profile: Image.asset('asstes/profile/p2.png'),
      about: 'This is a long string iam testing to controll overflow',
      notiCount: 0,
      enableStatus: true,
      enableCall: true)
];
