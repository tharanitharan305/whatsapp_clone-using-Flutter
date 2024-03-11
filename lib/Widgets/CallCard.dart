import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Data/contact.dart';

class CallCard extends StatefulWidget {
  CallCard({required this.contact});
  Contact contact;

  @override
  State<CallCard> createState() => _CallCardState();
}

class _CallCardState extends State<CallCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Color.fromRGBO(17, 34, 44, 1)))),
      padding: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 15),
      height: 79,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage: widget.contact.profile.image,
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
              Row(
                children: [
                  Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.redAccent,
                  ),
                  Text(
                    'Today, 06/03/2024',
                    style: TextStyle(color: Color.fromRGBO(22, 155, 128, 1)),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.call,
            color: Color.fromRGBO(22, 155, 128, 1),
          )
        ],
      ),
    );
  }
}
