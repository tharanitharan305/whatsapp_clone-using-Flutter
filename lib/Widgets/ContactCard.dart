import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Data/contact.dart';

class ContactCard extends StatefulWidget {
  ContactCard({required this.contact});
  Contact contact;
  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 15),
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Color.fromRGBO(17, 34, 44, 1)))),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color.fromRGBO(22, 155, 128, 1),
            radius: 30,
            foregroundImage: widget.contact.profile.image,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.contact.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width * 0.60,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  widget.contact.about,
                  style: TextStyle(
                      color: Color.fromRGBO(116, 127, 135, 1), fontSize: 17),
                ),
              )
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.contact.notiCount = widget.contact.notiCount! + 1;
                  });
                },
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Color.fromRGBO(0, 176, 131, 1),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      widget.contact.notiCount.toString(),
                    ),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
