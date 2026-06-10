import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsOverviewCard extends StatelessWidget {
  const StatsOverviewCard({super.key});

  Widget stat(
    IconData icon,
    Color bg,
    Color iconColor,
    String value,
    String title,
  ) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: bg,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            value,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),

          Text(
            title,
            style: GoogleFonts.poppins(
              color: const Color(0xFF6B7280),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        children: [
          stat(
            Icons.description_outlined,
            const Color(0xFFDBEAFE),
            const Color(0xFF2563EB),
            "2",
            "Applications",
          ),

          stat(
            Icons.schedule,
            const Color(0xFFFEF3C7),
            const Color(0xFFF59E0B),
            "1",
            "Review",
          ),

          stat(
            Icons.card_giftcard,
            const Color(0xFFDCFCE7),
            const Color(0xFF22C55E),
            "1",
            "Offers",
          ),
        ],
      ),
    );
  }
}