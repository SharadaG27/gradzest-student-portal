import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudyPreferencesCard
    extends StatelessWidget {
  const StudyPreferencesCard({
    super.key,
  });

  Widget chip(String text) {
    return Container(
      margin:
          const EdgeInsets.only(right: 8),
      padding:
          const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF4FF),
        borderRadius:
            BorderRadius.circular(30),
      ),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            "Study Preferences",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight:
                  FontWeight.w700,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "Preferred Countries",
            style: GoogleFonts.poppins(
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),

          Wrap(
            children: [
              chip("Canada"),
              chip("Australia"),
            ],
          ),

          const SizedBox(height: 16),

          Text(
            "Interested Courses",
            style: GoogleFonts.poppins(
              fontWeight:
                  FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),

          Wrap(
            children: [
              chip("Computer Science"),
              chip("Data Science"),
            ],
          ),
        ],
      ),
    );
  }
}