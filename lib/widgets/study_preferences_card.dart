import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudyPreferencesCard extends StatelessWidget {
  const StudyPreferencesCard({
    super.key,
  });

  Widget buildChip(
    String text,
    IconData icon,
    Color bgColor,
    Color iconColor,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        right: 8,
        bottom: 8,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius:
            BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 16,
            color: iconColor,
          ),

          const SizedBox(width: 6),

          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight:
                  FontWeight.w500,
              color: const Color(
                  0xFF374151),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionTitle(
    String title,
  ) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight:
            FontWeight.w600,
        fontSize: 14,
        color:
            const Color(0xFF374151),
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
            offset:
                const Offset(0, 4),
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
                Icons.travel_explore,
                color:
                    Color(0xFF2563EB),
                size: 22,
              ),

              const SizedBox(width: 8),

              Text(
                "Study Preferences",
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

          sectionTitle(
              "Preferred Countries"),

          const SizedBox(height: 12),

          Wrap(
            children: [
              buildChip(
                "Canada",
                Icons.flag,
                const Color(
                    0xFFEFF4FF),
                const Color(
                    0xFF2563EB),
              ),
              buildChip(
                "Australia",
                Icons.flag,
                const Color(
                    0xFFEFF4FF),
                const Color(
                    0xFF2563EB),
              ),
              buildChip(
                "Germany",
                Icons.flag,
                const Color(
                    0xFFEFF4FF),
                const Color(
                    0xFF2563EB),
              ),
            ],
          ),

          const SizedBox(height: 18),

          sectionTitle(
              "Interested Courses"),

          const SizedBox(height: 12),

          Wrap(
            children: [
              buildChip(
                "Computer Science",
                Icons.computer,
                const Color(
                    0xFFF3E8FF),
                const Color(
                    0xFF8B5CF6),
              ),
              buildChip(
                "Data Science",
                Icons.analytics,
                const Color(
                    0xFFF3E8FF),
                const Color(
                    0xFF8B5CF6),
              ),
              buildChip(
                "Artificial Intelligence",
                Icons.smart_toy,
                const Color(
                    0xFFF3E8FF),
                const Color(
                    0xFF8B5CF6),
              ),
            ],
          ),

          const SizedBox(height: 18),

          sectionTitle(
              "Preferred Intake"),

          const SizedBox(height: 12),

          Wrap(
            children: [
              buildChip(
                "Fall 2026",
                Icons.calendar_month,
                const Color(
                    0xFFECFDF5),
                const Color(
                    0xFF10B981),
              ),
              buildChip(
                "Spring 2027",
                Icons.calendar_month,
                const Color(
                    0xFFECFDF5),
                const Color(
                    0xFF10B981),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            padding:
                const EdgeInsets.all(
                    14),
            decoration: BoxDecoration(
              color: const Color(
                  0xFFF8FAFC),
              borderRadius:
                  BorderRadius.circular(
                      14),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.lightbulb,
                  color:
                      Color(0xFFF59E0B),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    "Your preferences are used to generate personalized university recommendations.",
                    style:
                        GoogleFonts
                            .poppins(
                      fontSize: 13,
                      color:
                          const Color(
                              0xFF6B7280),
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