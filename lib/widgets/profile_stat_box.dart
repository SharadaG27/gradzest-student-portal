import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileStatBox extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const ProfileStatBox({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius:
            BorderRadius.circular(16),
      ),
      child: Column(
        children: [

          Icon(
            icon,
            color: const Color(0xFF2563EB),
          ),

          const SizedBox(height: 10),

          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: const Color(0xFF6B7280),
            ),
          ),
        ],
      ),
    );
  }
}