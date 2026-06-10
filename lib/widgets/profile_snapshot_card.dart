import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSnapshotCard extends StatelessWidget {
  const ProfileSnapshotCard({super.key});

  Widget snapshotItem(
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: const Color(0xFF6B7280),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(0.05),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
            children: [
              Text(
                "Profile Snapshot",
                style:
                    GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Edit",
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: snapshotItem(
                  "Nationality",
                  "Indian",
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: snapshotItem(
                  "GPA",
                  "8.5 / 10",
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: snapshotItem(
                  "English",
                  "IELTS 7",
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: snapshotItem(
                  "Budget",
                  "\$40,000/yr",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}