import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return NewMessageState();
  }
}

class NewMessageState extends State<NewMessage> {
  var _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _submitMessage() {
    final enteredMessage = _messageController.text;

    if (enteredMessage.trim().isEmpty) {
      return;
    }
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    print("emoji");
                  },
                  icon: Icon(Icons.emoji_emotions_outlined),
                ),
                labelText: "Send a message...",
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
