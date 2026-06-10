import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingDeadlinesCard extends StatelessWidget {
  const UpcomingDeadlinesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [

          /// HEADER
          Row(
            children: [

              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFEEF4FF),
                  borderRadius:
                      BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xFF2563EB),
                  size: 20,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  "Upcoming Deadlines",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.w700,
                    color:
                        const Color(0xFF111827),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: GoogleFonts.poppins(
                    color:
                        const Color(0xFF2563EB),
                    fontWeight:
                        FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          /// DEADLINE ITEM
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFF8FAFC),
              borderRadius:
                  BorderRadius.circular(18),
              border: Border.all(
                color: const Color(0xFFE5E7EB),
              ),
            ),
            child: Row(
              children: [

                Container(
                  width: 46,
                  height: 46,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFF1F2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.schedule_rounded,
                    color: Color(0xFFEF4444),
                    size: 22,
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [

                      Text(
                        "University of Toronto",
                        style:
                            GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight:
                              FontWeight.w700,
                          color:
                              const Color(0xFF111827),
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        "Application Deadline",
                        style:
                            GoogleFonts.poppins(
                          fontSize: 12,
                          color:
                              const Color(0xFF6B7280),
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        "01 Oct 2026",
                        style:
                            GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight:
                              FontWeight.w600,
                          color:
                              const Color(0xFF374151),
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.end,
                  children: [

                    Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color:
                            const Color(0xFFFEE2E2),
                        borderRadius:
                            BorderRadius.circular(
                                20),
                      ),
                      child: Text(
                        "Urgent",
                        style:
                            GoogleFonts.poppins(
                          color:
                              const Color(0xFFDC2626),
                          fontWeight:
                              FontWeight.w700,
                          fontSize: 11,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      "7 Days Left",
                      style:
                          GoogleFonts.poppins(
                        color:
                            const Color(0xFFEF4444),
                        fontWeight:
                            FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}