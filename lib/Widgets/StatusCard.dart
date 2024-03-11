import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Data/contact.dart';
import 'package:whatsapp_clone/Screens/status.dart';

class StatusCard extends StatefulWidget {
  StatusCard({required this.contact});
  Contact contact;
  State<StatusCard> createState() => _StatusCardState();
}

class _StatusCardState extends State<StatusCard> {
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Color.fromRGBO(17, 34, 44, 1)))),
      padding: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 15),
      height: 75,
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Color.fromRGBO(22, 155, 128, 1),
            foregroundColor: Color.fromRGBO(22, 155, 128, 1),
            child: CircleAvatar(
              radius: 22,
              foregroundImage: widget.contact.profile.image,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.contact.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Today, 06/03/2024',
                style: TextStyle(color: Color.fromRGBO(22, 155, 128, 1)),
              )
            ],
          )
        ],
      ),
    );
  }
}
