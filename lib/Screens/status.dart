import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Data/ContactList.dart';
import 'package:whatsapp_clone/Widgets/StatusCard.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  var statusList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < contacts.length; i++) {
      if (contacts.elementAt(i).enableStatus)
        statusList.add(contacts.elementAt(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...statusList.map((e) {
          return StatusCard(contact: e);
        }).toList()
      ],
    );
  }
}
