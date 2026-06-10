import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "My Applications",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),

              const Spacer(),

              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      "View All",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF2563EB),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color(0xFF2563EB),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          _applicationTile(
            university: "University of Toronto",
            course: "Master of Computer Science",
            status: "Under Review",
            submittedDate: "Sep 15, 2026",
          ),

          const SizedBox(height: 14),

          _applicationTile(
            university: "University of British Columbia",
            course: "Master of Engineering",
            status: "Offer Received",
            submittedDate: "Sep 10, 2026",
          ),
        ],
      ),
    );
  }

  Widget _applicationTile({
    required String university,
    required String course,
    required String status,
    required String submittedDate,
  }) {
    Color badgeBg;
    Color badgeColor;

    if (status == "Offer Received") {
      badgeBg = const Color(0xFFDCFCE7);
      badgeColor = const Color(0xFF16A34A);
    } else if (status == "Under Review") {
      badgeBg = const Color(0xFFFEF3C7);
      badgeColor = const Color(0xFFD97706);
    } else {
      badgeBg = const Color(0xFFDBEAFE);
      badgeColor = const Color(0xFF2563EB);
    }

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F4F6),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    "U",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: const Color(0xFF1E3A8A),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Text(
                      university,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF111827),
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      course,
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Container(
            height: 1,
            color: const Color(0xFFF3F4F6),
          ),

          const SizedBox(height: 14),

          Row(
            children: [

              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                  Text(
                    "Submitted",
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      color: const Color(0xFF9CA3AF),
                    ),
                  ),

                  const SizedBox(height: 2),

                  Text(
                    submittedDate,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF374151),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              Container(
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: badgeBg,
                  borderRadius:
                      BorderRadius.circular(30),
                ),
                child: Text(
                  status,
                  style: GoogleFonts.poppins(
                    color: badgeColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}