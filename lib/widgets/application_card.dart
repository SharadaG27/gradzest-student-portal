import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [

          Text(
            "Recent Applications",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF1F2937),
            ),
          ),

          const SizedBox(height: 18),

          _applicationCard(
            university:
                "University of Toronto",
            course:
                "Master of Computer Science",
            status: "Under Review",
          ),

          const SizedBox(height: 16),

          _applicationCard(
            university:
                "University of British Columbia",
            course:
                "Master of Engineering",
            status: "Offer Received",
          ),
        ],
      ),
    );
  }

  Widget _applicationCard({
    required String university,
    required String course,
    required String status,
  }) {
    Color badgeColor;
    Color badgeBg;

    if (status == "Offer Received") {
      badgeColor = const Color(0xFF16A34A);
      badgeBg = const Color(0xFFDCFCE7);
    } else if (status == "Under Review") {
      badgeColor = const Color(0xFFF59E0B);
      badgeBg = const Color(0xFFFEF3C7);
    } else if (status == "Rejected") {
      badgeColor = const Color(0xFFDC2626);
      badgeBg = const Color(0xFFFEE2E2);
    } else {
      badgeColor = const Color(0xFF2563EB);
      badgeBg = const Color(0xFFDBEAFE);
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
        borderRadius:
            BorderRadius.circular(18),
      ),
      child: Row(
        children: [

          const CircleAvatar(
            radius: 24,
            backgroundColor:
                Color(0xFFEFF4FF),
            child: Icon(
              Icons.school_outlined,
              color: Color(0xFF2B3674),
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
                    fontSize: 15,
                    fontWeight:
                        FontWeight.w700,
                    color:
                        const Color(0xFF1F2937),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  course,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color:
                        const Color(0xFF6B7280),
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: badgeBg,
                    borderRadius:
                        BorderRadius.circular(
                            30),
                  ),
                  child: Text(
                    status,
                    style:
                        GoogleFonts.poppins(
                      color: badgeColor,
                      fontWeight:
                          FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}