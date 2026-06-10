import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/chat_input_bar.dart';
import '../../widgets/chat_message_bubble.dart';

import '../dashboard/dashboard_screen.dart';
import '../applications/applications_screen.dart';
import '../universities/universities_screen.dart';
import '../profile/profile_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() =>
      _ChatScreenState();
}

class _ChatScreenState
    extends State<ChatScreen> {
  final TextEditingController
      _messageController =
          TextEditingController();

  bool isTyping = false;

  final List<Map<String, dynamic>>
      messages = [
    {
      "message":
          "Welcome to Gradzest Advisor 👋",
      "isUser": false,
    },
    {
      "message":
          "How can I help with your study-abroad journey today?",
      "isUser": false,
    },
  ];

  void sendMessage() {
    if (_messageController.text
        .trim()
        .isEmpty) {
      return;
    }

    String userText =
        _messageController.text;

    setState(() {
      messages.add({
        "message": userText,
        "isUser": true,
      });

      isTyping = true;
    });

    _messageController.clear();

    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          isTyping = false;

          messages.add({
            "message":
                "Thank you for your query regarding \"$userText\".\n\nOur advisor recommends exploring suitable universities, checking eligibility criteria, preparing required documents, and reviewing application deadlines.",
            "isUser": false,
          });
        });
      },
    );
  }

  void sendQuickMessage(
    String text,
  ) {
    _messageController.text =
        "Tell me about $text";
    sendMessage();
  }

  Widget quickChip(
    String text,
    IconData icon,
  ) {
    return ActionChip(
      avatar: Icon(
        icon,
        size: 18,
        color: const Color(
          0xFF2B3674,
        ),
      ),
      label: Text(
        text,
        style: GoogleFonts.poppins(
          fontWeight:
              FontWeight.w500,
        ),
      ),
      backgroundColor:
          Colors.white,
      side: const BorderSide(
        color: Color(0xFFE5E7EB),
      ),
      onPressed: () =>
          sendQuickMessage(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor:
      const Color(0xFFF8FAFC),

  drawer: const AppDrawer(),

      

      body: SafeArea(
  child: Column(
    children: [

          Padding(
  padding: const EdgeInsets.fromLTRB(
    20,
    16,
    20,
    12,
  ),
  child: Row(
    children: [

      Builder(
        builder: (context) {
          return Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.05),
                  blurRadius: 10,
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Color(0xFF111827),
              ),
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer();
              },
            ),
          );
        },
      ),

      const SizedBox(width: 14),

      Expanded(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

           Text(
  "Messages",
              style:
                  GoogleFonts.poppins(
                fontSize: 24,
                fontWeight:
                    FontWeight.w700,
                color:
                    const Color(
                  0xFF1F2937,
                ),
              ),
            ),

            Text(
              "Chat with counselors and advisors",
              style:
                  GoogleFonts.poppins(
                fontSize: 13,
                color:
                    const Color(
                  0xFF6B7280,
                ),
              ),
            ),
          ],
        ),
      ),

      Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.support_agent,
          color: Color(0xFF2B3674),
        ),
      ),
    ],
  ),
),

          /// QUICK ACTIONS
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.all(
                    16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                quickChip(
                  "Universities",
                  Icons.school,
                ),
                quickChip(
                  "Applications",
                  Icons.description,
                ),
                quickChip(
                  "Scholarships",
                  Icons.workspace_premium,
                ),
                quickChip(
                  "Visa",
                  Icons.flight_takeoff,
                ),
              ],
            ),
          ),

          /// CHAT LIST
          Expanded(
            child: ListView(
              padding:
                  const EdgeInsets
                      .symmetric(
                horizontal: 16,
              ),
              children: [

                Center(
                  child: Container(
                    margin:
                        const EdgeInsets
                            .only(
                      bottom: 20,
                    ),
                    padding:
                        const EdgeInsets
                            .symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration:
                        BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius
                              .circular(
                                  20),
                    ),
                    child: Text(
                      "Today",
                      style:
                          GoogleFonts
                              .poppins(
                        fontSize: 12,
                        color:
                            const Color(
                          0xFF6B7280,
                        ),
                      ),
                    ),
                  ),
                ),

                ...messages.map(
                  (message) =>
                      ChatMessageBubble(
                    message:
                        message[
                            "message"],
                    isUser:
                        message[
                            "isUser"],
                  ),
                ),

                if (isTyping)
                  Align(
                    alignment:
                        Alignment
                            .centerLeft,
                    child:
                        Container(
                      margin:
                          const EdgeInsets
                              .only(
                        bottom: 12,
                      ),
                      padding:
                          const EdgeInsets
                              .all(
                        14,
                      ),
                      decoration:
                          BoxDecoration(
                        color: Colors
                            .white,
                        borderRadius:
                            BorderRadius
                                .circular(
                                    18),
                      ),
                      child: Text(
                        "Gradzest Advisor is typing...",
                        style:
                            GoogleFonts
                                .poppins(
                          fontSize:
                              13,
                          color:
                              const Color(
                            0xFF6B7280,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          ChatInputBar(
            controller:
                _messageController,
            onSend: sendMessage,
          ),
        ],
      ),
      ),
      bottomNavigationBar:
          BottomNavBar(
        selectedIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const DashboardScreen(),
              ),
            );
          }

          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const ApplicationsScreen(),
              ),
            );
          }

          if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const UniversitiesScreen(),
              ),
            );
          }

          if (index == 3) {
            return;
          }

          if (index == 4) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const ProfileScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}