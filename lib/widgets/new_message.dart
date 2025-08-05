import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return NewMessageState();
  }
}

class NewMessageState extends State<NewMessage> {
  final _messageController = TextEditingController();
  bool _showEmojiPicker = false;
  FocusNode _focusNode = FocusNode();

  final List<String> _emojis = [
    '😀',
    '😃',
    '😄',
    '😁',
    '😆',
    '😅',
    '😂',
    '🤣',
    '😊',
    '😇',
    '🙂',
    '🙃',
    '😉',
    '😌',
    '😍',
    '🥰',
    '😘',
    '😗',
    '😙',
    '😚',
    '😋',
    '😛',
    '😝',
    '😜',
    '🤪',
    '🤨',
    '🧐',
    '🤓',
    '😎',
    '🤩',
    '🥳',
    '😏',
    '😒',
    '😞',
    '😔',
    '😟',
    '😕',
    '🙁',
    '☹️',
    '😣',
    '😖',
    '😫',
    '😩',
    '🥺',
    '😢',
    '😭',
    '😤',
    '😠',
    '😡',
    '🤬',
    '🤯',
    '😳',
    '🥵',
    '🥶',
    '😱',
    '😨',
    '😰',
    '😥',
    '😓',
    '🤗',
    '🤔',
    '🤭',
    '🤫',
    '🤥',
    '😶',
    '😐',
    '😑',
    '😯',
    '😦',
    '😧',
    '😮',
    '😲',
    '🥱',
    '😴',
    '🤤',
    '😪',
    '😵',
    '🤐',
    '🥴',
    '🤢',
    '🤮',
    '🤧',
    '😷',
    '🤒',
    '🤕',
    '🤑',
    '🤠',
    '💩',
    '👻',
    '💀',
    '☠️',
    '👽',
    '👾',
    '🤖',
    '😺',
    '😸',
    '😹',
    '😻',
    '😼',
    '😽',
    '🙀',
    '😿',
    '😾',
    '🙈',
    '🙉',
    '🙊',
    '🐵',
    '🐒',
    '🦍',
    '🦧',
    '🐶',
    '🐕',
    '🐩',
    '🐺',
    '🦊',
    '🦝',
    '🐱',
    '🐈',
    '🦁',
    '🐯',
    '🐅',
    '🐆',
    '🐴',
    '🐎',
    '🦄',
    '🦓',
    '🦌',
    '🐮',
    '🐂',
    '🐃',
    '🐄',
    '🐷',
    '🐖',
    '🐗',
    '🐽',
    '🐏',
    '🐑',
    '🐐',
    '🐪',
    '🐫',
    '🦙',
    '🦒',
    '🐘',
    '🦏',
    '🦛',
    '🐭',
    '🐁',
    '🐀',
    '🐹',
    '🐰',
    '🐇',
    '🐿️',
    '🦫',
    '🦔',
    '🦇',
    '🐻',
    '🐨',
    '🐼',
    '🦥',
    '🦦',
    '🦨',
    '🦘',
    '🦡',
    '🐾',
    '🦃',
    '🐔',
    '🐓',
    '🐣',
    '🐤',
    '🐥',
    '🐦',
    '🐧',
    '🕊️',
    '🦅',
    '🦆',
    '🦢',
    '🦉',
    '🦤',
    '🪶',
  ];

  @override
  void dispose() {
    _messageController.dispose();
    _focusNode.dispose();
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
    return Column(
      children: [
        Padding(
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
                    prefixIcon: IconButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          _showEmojiPicker = !_showEmojiPicker;
                        });
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
        ),
        if (_showEmojiPicker)
          Container(
            height: 250,
            color: Colors.grey[200],
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
                childAspectRatio: 1,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: _emojis.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _messageController.text += _emojis[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        _emojis[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
