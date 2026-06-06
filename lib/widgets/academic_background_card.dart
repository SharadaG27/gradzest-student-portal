import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademicBackgroundCard
    extends StatelessWidget {
  const AcademicBackgroundCard({
    super.key,
  });

  Widget item(
    String title,
    String value,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius:
              BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
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
            "Academic Background",
            style: GoogleFonts.poppins(
              fontWeight:
                  FontWeight.w700,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              item("Education", "B.Tech"),
              const SizedBox(width: 12),
              item("CGPA", "8.5"),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              item("IELTS", "7.0"),
              const SizedBox(width: 12),
              item("Budget", "\$40K"),
            ],
          ),
        ],
      ),
    );
  }
}