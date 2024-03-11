import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/calls.dart';
import 'package:whatsapp_clone/Screens/chat.dart';
import 'package:whatsapp_clone/Screens/status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static PageController _pageController = PageController(
    initialPage: 0,
  );
  List<Widget> screens = [Chat(), Status(), Calls()];
  List<String> pageTitles = ["Chats", "Status", "Calls"];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(28, 45, 54, 1),
        title: Container(
          height: 106, // Adjust the height as needed
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("WhatsApp",
                        style: TextStyle(color: Colors.white))),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.camera_enhance_rounded,
                            color: Colors.white,
                          )),
                      ...List.generate(
                        pageTitles.length,
                        (index) => GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              if (pageTitles[index] == 'Chats')
                                SizedBox(
                                  width: 10,
                                ),
                              if (pageTitles[index] != 'Chats')
                                SizedBox(
                                  width: 50,
                                ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 10),
                                  decoration: index == currentPage
                                      ? const BoxDecoration(
                                          border: BorderDirectional(
                                              bottom: BorderSide(
                                          color:
                                              Color.fromRGBO(22, 155, 128, 1),
                                          width: 3,
                                        )))
                                      : null,
                                  child: Text(
                                    pageTitles[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: index == currentPage
                                          ? Color.fromRGBO(22, 155, 128, 1)
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(14, 31, 41, 1),
        ),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          children: screens,
        ),
      ),
    );
  }
}
