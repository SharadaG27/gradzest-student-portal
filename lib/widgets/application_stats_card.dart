import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationStatsCard extends StatelessWidget {
  final String title;
  final String count;
  final bool isSelected;

  const ApplicationStatsCard({
    super.key,
    required this.title,
    required this.count,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 95,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color(0xFF2B3674)
            : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected
              ? Colors.transparent
              : const Color(0xFFE5E7EB),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [

          Text(
            count,
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: isSelected
                  ? Colors.white
                  : const Color(0xFF2B3674),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? Colors.white70
                  : const Color(0xFF6B7280),
            ),
          ),
        ],
      ),
    );
  }
}