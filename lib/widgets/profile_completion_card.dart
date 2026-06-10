import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCompletionCard extends StatelessWidget {
  const ProfileCompletionCard({super.key});

  Widget scoreItem(
    String title,
    bool completed,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(
            completed
                ? Icons.check_circle_outline
                : Icons.radio_button_unchecked,
            size: 20,
            color: completed
                ? const Color(0xFF22C55E)
                : Colors.grey,
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xFF4B5563),
              ),
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
            color: Colors.black.withOpacity(
              0.05,
            ),
            blurRadius: 12,
            offset: const Offset(0, 4),
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
              Row(
                children: [
                  const Icon(
                    Icons.analytics_outlined,
                    color:
                        Color(0xFF2563EB),
                    size: 22,
                  ),

                  const SizedBox(width: 8),

                  Text(
                    "Profile Score",
                    style:
                        GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w700,
                      color:
                          const Color(
                        0xFF1F2937,
                      ),
                    ),
                  ),
                ],
              ),

              Text(
                "85%",
                style:
                    GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.w700,
                  color:
                      const Color(
                    0xFF22C55E,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          ClipRRect(
            borderRadius:
                BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.85,
              minHeight: 10,
              backgroundColor:
                  const Color(
                0xFFE5E7EB,
              ),
              color:
                  const Color(
                0xFF22C55E,
              ),
            ),
          ),

          const SizedBox(height: 20),

          scoreItem(
            "Phone Number",
            true,
          ),

          scoreItem(
            "Nationality",
            true,
          ),

          scoreItem(
            "Education Level",
            true,
          ),

          scoreItem(
            "GPA / Percentage",
            true,
          ),

          scoreItem(
            "English Test Score",
            true,
          ),

          scoreItem(
            "Preferred Countries",
            true,
          ),

          scoreItem(
            "Interested Courses",
            true,
          ),

          scoreItem(
            "Annual Budget",
            false,
          ),

          const SizedBox(height: 6),

          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color:
                  const Color(
                0xFFF8FAFC,
              ),
              borderRadius:
                  BorderRadius.circular(
                12,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.lightbulb_outline,
                  color:
                      Color(
                    0xFFF59E0B,
                  ),
                  size: 20,
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: Text(
                    "Complete your Annual Budget information to reach 100% profile completion.",
                    style:
                        GoogleFonts
                            .poppins(
                      fontSize: 12,
                      color:
                          const Color(
                        0xFF6B7280,
                      ),
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