import 'package:get/get_navigation/get_navigation.dart';
import 'package:whatsapp_clone/Screens/chat.dart';
import 'package:whatsapp_clone/Screens/status.dart';
import 'Screens/calls.dart';

var routes = [
  GetPage(
      name: '/chat',
      page: () => Chat(),
      transition: Transition.rightToLeftWithFade),
  GetPage(
      name: '/status',
      page: () => Status(),
      transition: Transition.rightToLeftWithFade),
  GetPage(
      name: '/calls',
      page: () => Calls(),
      transition: Transition.rightToLeftWithFade),
];
