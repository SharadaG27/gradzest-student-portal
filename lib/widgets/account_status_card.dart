import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountStatusCard extends StatelessWidget {
  const AccountStatusCard({
    super.key,
  });

  Widget statusTile(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius:
            BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color:
                  color.withOpacity(0.12),
              borderRadius:
                  BorderRadius.circular(
                      12),
            ),
            child: Icon(
              icon,
              color: color,
              size: 22,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style:
                  GoogleFonts.poppins(
                fontWeight:
                    FontWeight.w600,
                fontSize: 14,
                color: const Color(
                    0xFF111827),
              ),
            ),
          ),

          Container(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color:
                  color.withOpacity(0.12),
              borderRadius:
                  BorderRadius.circular(
                      20),
            ),
            child: Text(
              value,
              style:
                  GoogleFonts.poppins(
                fontWeight:
                    FontWeight.w700,
                color: color,
                fontSize: 13,
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
      padding:
          const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(
                20),
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
                Icons.verified_user_outlined,
                color:
                    Color(0xFF2563EB),
                size: 22,
              ),

              const SizedBox(width: 8),

              Text(
                "Account Status",
                style:
                    GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w700,
                  color: const Color(
                      0xFF1F2937),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          statusTile(
            Icons.person_outline,
            "Profile Status",
            "Active",
            const Color(0xFF16A34A),
          ),

          statusTile(
            Icons.description_outlined,
            "Applications",
            "2",
            const Color(0xFF2563EB),
          ),

          statusTile(
            Icons.workspace_premium_outlined,
            "Offers Received",
            "1",
            const Color(0xFF9333EA),
          ),

          statusTile(
            Icons.school_outlined,
            "Universities Saved",
            "12",
            const Color(0xFFF59E0B),
          ),

          statusTile(
            Icons.folder_outlined,
            "Documents Verified",
            "3/4",
            const Color(0xFF0EA5E9),
          ),

          const SizedBox(height: 16),

          Container(
            padding:
                const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient:
                  const LinearGradient(
                colors: [
                  Color(0xFF2B3674),
                  Color(0xFF4F7CFF),
                ],
              ),
              borderRadius:
                  BorderRadius.circular(
                      16),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.workspace_premium,
                  color: Colors.white,
                  size: 28,
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                    children: [
                      Text(
                        "Profile Strength",
                        style:
                            GoogleFonts
                                .poppins(
                          color:
                              Colors.white,
                          fontWeight:
                              FontWeight
                                  .w600,
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(
                          height: 4),

                      Text(
                        "Excellent profile readiness for study abroad applications.",
                        style:
                            GoogleFonts
                                .poppins(
                          color: Colors
                              .white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  "85%",
                  style:
                      GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight:
                        FontWeight.w700,
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