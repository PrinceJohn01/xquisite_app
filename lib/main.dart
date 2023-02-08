import 'package:xquisite_app/api/firebase_api.dart';
import 'package:xquisite_app/page/chat_page.dart';
import 'package:xquisite_app/page/chats_page.dart';
import 'package:xquisite_app/users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi.addRandomUsers(Users.initUsers);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Firebase Chat';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: const ChatsPage(),
  );
}
