import 'package:flutter/material.dart';

class ChatInputBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const ChatInputBar({
    super.key,
    required this.controller,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        16,
        10,
        16,
        20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
              0.05,
            ),
            blurRadius: 12,
            offset: const Offset(
              0,
              -2,
            ),
          ),
        ],
      ),
      child: Row(
        children: [

          /// ATTACHMENT BUTTON
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color:
                  const Color(0xFFF3F4F6),
              borderRadius:
                  BorderRadius.circular(
                14,
              ),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file_rounded,
                color:
                    Color(0xFF6B7280),
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// INPUT FIELD
          Expanded(
            child: TextField(
              controller: controller,
              minLines: 1,
              maxLines: 4,
              decoration: InputDecoration(
                hintText:
                    "Ask about universities, visas, scholarships...",
                filled: true,
                fillColor:
                    const Color(
                  0xFFF8FAFC,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    30,
                  ),
                  borderSide:
                      BorderSide.none,
                ),
                enabledBorder:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    30,
                  ),
                  borderSide:
                      BorderSide.none,
                ),
                focusedBorder:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    30,
                  ),
                  borderSide:
                      const BorderSide(
                    color:
                        Color(0xFF2B3674),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// SEND BUTTON
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color:
                  const Color(0xFF2B3674),
              borderRadius:
                  BorderRadius.circular(
                16,
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color(
                    0xFF2B3674,
                  ).withOpacity(
                    0.25,
                  ),
                  blurRadius: 12,
                  offset: const Offset(
                    0,
                    4,
                  ),
                ),
              ],
            ),
            child: IconButton(
              onPressed: onSend,
              icon: const Icon(
                Icons.send_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}