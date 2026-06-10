import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  Widget infoRow({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: const Color(0xFFEFF4FF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF2563EB),
              size: 22,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.person_outline,
                color: Color(0xFF2563EB),
                size: 22,
              ),

              const SizedBox(width: 8),

              Text(
                "Personal Information",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          infoRow(
            icon: Icons.person_outline,
            title: "Full Name",
            value: "Sharada Gurrala",
          ),

          infoRow(
            icon: Icons.phone_outlined,
            title: "Phone Number",
            value: "+91 XXXXX XXXXX",
          ),

          infoRow(
            icon: Icons.email_outlined,
            title: "Email Address",
            value: "sharada@example.com",
          ),

          infoRow(
            icon: Icons.public,
            title: "Nationality",
            value: "Indian",
          ),
        ],
      ),
    );
  }
}