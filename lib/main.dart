import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme_app.dart';
import 'package:yes_no_app/presentation/Screens/chat/chat_screen.dart';
import 'package:yes_no_app/presentation/providers/chat_message.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        theme: AppTheme(selectColor: 4).theme(),
        debugShowCheckedModeBanner: false,
        title: 'Yes No App',
        home: ChatScreen(),
      ),
    );
  }
}
