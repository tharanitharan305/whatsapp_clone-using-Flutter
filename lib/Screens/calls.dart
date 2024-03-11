import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Data/ContactList.dart';
import 'package:whatsapp_clone/Widgets/CallCard.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  var callList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < contacts.length; i++) {
      if (contacts.elementAt(i).enableCall) callList.add(contacts.elementAt(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...callList.map((e) => CallCard(contact: e)).toList()],
    );
  }
}
