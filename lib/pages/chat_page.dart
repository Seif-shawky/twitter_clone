import 'package:flutter/material.dart';
import 'package:projectbased/components/tool_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  Toolbar(title: 'Chat'),
      body: ListView.builder(
        itemBuilder: (context, inedx){},
      ),
    );
  }
}