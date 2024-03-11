import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ContactCard.dart';

import '../Data/ContactList.dart';
import '../Data/contact.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...contacts.map((e) => ContactCard(contact: e)).toList()],
    );
  }
}
