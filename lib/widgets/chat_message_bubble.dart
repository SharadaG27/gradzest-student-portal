import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMessageBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const ChatMessageBubble({
    super.key,
    required this.message,
    required this.isUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.end,
        mainAxisAlignment: isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [

          /// BOT AVATAR
          if (!isUser)
            Container(
              width: 36,
              height: 36,
              margin:
                  const EdgeInsets.only(
                right: 10,
              ),
              decoration:
                  const BoxDecoration(
                color:
                    Color(0xFF2B3674),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.support_agent,
                color: Colors.white,
                size: 18,
              ),
            ),

          /// MESSAGE
          Flexible(
            child: Column(
              crossAxisAlignment:
                  isUser
                      ? CrossAxisAlignment
                          .end
                      : CrossAxisAlignment
                          .start,
              children: [

                Container(
                  padding:
                      const EdgeInsets
                          .symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  constraints:
                      BoxConstraints(
                    maxWidth:
                        MediaQuery.of(
                                  context,
                                )
                                .size
                                .width *
                            0.72,
                  ),
                  decoration:
                      BoxDecoration(
                    color: isUser
                        ? const Color(
                            0xFF2B3674,
                          )
                        : Colors.white,
                    borderRadius:
                        BorderRadius
                            .circular(
                      20,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors
                            .black
                            .withOpacity(
                          0.04,
                        ),
                        blurRadius: 8,
                        offset:
                            const Offset(
                          0,
                          2,
                        ),
                      ),
                    ],
                  ),
                  child: Text(
                    message,
                    style:
                        GoogleFonts
                            .poppins(
                      fontSize: 14,
                      height: 1.5,
                      color: isUser
                          ? Colors.white
                          : const Color(
                              0xFF111827,
                            ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),

                Text(
                  "Just now",
                  style:
                      GoogleFonts
                          .poppins(
                    fontSize: 11,
                    color:
                        const Color(
                      0xFF9CA3AF,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// USER AVATAR
          if (isUser)
            Container(
              width: 36,
              height: 36,
              margin:
                  const EdgeInsets.only(
                left: 10,
              ),
              decoration:
                  const BoxDecoration(
                color:
                    Color(0xFFE5E7EB),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                color:
                    Color(0xFF6B7280),
                size: 18,
              ),
            ),
        ],
      ),
    );
  }
}