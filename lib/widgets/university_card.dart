import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UniversityCard extends StatelessWidget {
  final String university;
  final String country;
  final String course;
  final int match;

  const UniversityCard({
    super.key,
    required this.university,
    required this.country,
    required this.course,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    Color matchColor;

    if (match >= 80) {
      matchColor = Colors.green;
    } else if (match >= 70) {
      matchColor = Colors.blue;
    } else {
      matchColor = Colors.orange;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              const CircleAvatar(
                radius: 24,
                backgroundColor:
                    Color(0xFFEFF4FF),
                child: Icon(
                  Icons.school,
                  color: Color(0xFF2B3674),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Text(
                      university,
                      style: GoogleFonts.poppins(
                        fontWeight:
                            FontWeight.w700,
                      ),
                    ),

                    Text(
                      country,
                      style: GoogleFonts.poppins(
                        color:
                            const Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color:
                      matchColor.withOpacity(0.1),
                  borderRadius:
                      BorderRadius.circular(30),
                ),
                child: Text(
                  "$match% Match",
                  style: GoogleFonts.poppins(
                    color: matchColor,
                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            course,
            style: GoogleFonts.poppins(
              color: const Color(0xFF374151),
            ),
          ),

          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            children: [

              _tag("Preferred Country"),
              _tag("Within Budget"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 11,
        ),
      ),
    );
  }
}