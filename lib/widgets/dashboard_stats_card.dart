import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardStatsCard extends StatelessWidget {
  const DashboardStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.05,
            ),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: const [

          Expanded(
            child: _Item(
              icon: Icons.description_outlined,
              value: "2",
              title: "Applications",
              color: Color(0xFF2563EB),
            ),
          ),

          Expanded(
            child: _Item(
              icon: Icons.schedule,
              value: "1",
              title: "Review",
              color: Color(0xFFF59E0B),
            ),
          ),

          Expanded(
            child: _Item(
              icon: Icons.card_giftcard,
              value: "1",
              title: "Offers",
              color: Color(0xFF22C55E),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final IconData icon;
  final String value;
  final String title;
  final Color color;

  const _Item({
    required this.icon,
    required this.value,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CircleAvatar(
          radius: 26,
          backgroundColor:
              color.withOpacity(0.12),
          child: Icon(
            icon,
            color: color,
          ),
        ),

        const SizedBox(height: 12),

        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),

        Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xFF6B7280),
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}