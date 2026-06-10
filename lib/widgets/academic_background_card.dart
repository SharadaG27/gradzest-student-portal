import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademicBackgroundCard extends StatelessWidget {
  const AcademicBackgroundCard({
    super.key,
  });

  Widget statCard(
    String title,
    String value,
    IconData icon,
    Color color,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: color.withOpacity(0.12),
                borderRadius:
                    BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: color,
                size: 22,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color:
                    const Color(0xFF1F2937),
              ),
            ),

            const SizedBox(height: 4),

            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color:
                    const Color(0xFF6B7280),
              ),
            ),
          ],
        ),
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
                Colors.black.withOpacity(
                    0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.school_outlined,
                color: Color(0xFF2563EB),
                size: 22,
              ),

              const SizedBox(width: 8),

              Text(
                "Academic Background",
                style:
                    GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w700,
                  color:
                      const Color(
                          0xFF1F2937),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              statCard(
                "Degree",
                "B.Tech",
                Icons.school,
                const Color(0xFF2563EB),
              ),

              const SizedBox(width: 12),

              statCard(
                "CGPA",
                "8.5",
                Icons.star,
                const Color(0xFFF59E0B),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              statCard(
                "IELTS",
                "7.0",
                Icons.language,
                const Color(0xFF10B981),
              ),

              const SizedBox(width: 12),

              statCard(
                "Budget",
                "\$40K",
                Icons.account_balance_wallet,
                const Color(0xFF8B5CF6),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            padding:
                const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color:
                  const Color(0xFFEFF4FF),
              borderRadius:
                  BorderRadius.circular(
                      14),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.workspace_premium,
                  color:
                      Color(0xFF2563EB),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Text(
                    "Strong academic profile with competitive study abroad eligibility.",
                    style:
                        GoogleFonts
                            .poppins(
                      fontSize: 13,
                      color:
                          const Color(
                              0xFF374151),
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