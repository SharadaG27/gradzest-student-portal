import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileChip extends StatelessWidget {
  final String title;

  const ProfileChip({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEFF6FF),
        borderRadius:
            BorderRadius.circular(30),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: const Color(0xFF2563EB),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}