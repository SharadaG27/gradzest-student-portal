import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTimelineCard extends StatelessWidget {
  final String university;
  final String course;
  final String intake;
  final String submittedDate;
  final String status;
  final bool showAcceptButton;

  const ApplicationTimelineCard({
    super.key,
    required this.university,
    required this.course,
    required this.intake,
    required this.submittedDate,
    required this.status,
    this.showAcceptButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color statusColor = _statusColor(status);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFFE5E7EB),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
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
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color:
                      const Color(0xFFEEF2FF),
                  borderRadius:
                      BorderRadius.circular(
                          14),
                ),
                child: const Icon(
                  Icons.school,
                  color: Color(0xFF2B3674),
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [

                    Text(
                      university,
                      style:
                          GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight:
                            FontWeight.w700,
                        color:
                            const Color(
                                0xFF111827),
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      course,
                      style:
                          GoogleFonts.poppins(
                        fontSize: 14,
                        color:
                            const Color(
                                0xFF6B7280),
                      ),
                    ),

                    Text(
                      intake,
                      style:
                          GoogleFonts.poppins(
                        fontSize: 13,
                        color:
                            const Color(
                                0xFF9CA3AF),
                      ),
                    ),
                  ],
                ),
              ),

              _statusBadge(
                status,
                statusColor,
              ),
            ],
          ),

          const SizedBox(height: 18),

          const Divider(),

          const SizedBox(height: 12),

          /// APPLICATION INFO
          Row(
            children: [

              const Icon(
                Icons.calendar_today,
                size: 16,
                color: Color(0xFF6B7280),
              ),

              const SizedBox(width: 8),

              Text(
                "Applied on $submittedDate",
                style:
                    GoogleFonts.poppins(
                  fontSize: 13,
                  color:
                      const Color(
                          0xFF6B7280),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// TIMELINE TITLE
          Text(
            "Application Progress",
            style: GoogleFonts.poppins(
              fontWeight:
                  FontWeight.w600,
              fontSize: 14,
              color:
                  const Color(
                      0xFF111827),
            ),
          ),

          const SizedBox(height: 18),

          /// TIMELINE
          Row(
            children: [

              _step(
                "Submitted",
                true,
              ),

              _line(true),

              _step(
                "Review",
                status != "Submitted",
              ),

              _line(
                status ==
                        "Offer Received" ||
                    status ==
                        "Accepted",
              ),

              _step(
                "Offer",
                status ==
                        "Offer Received" ||
                    status ==
                        "Accepted",
              ),

              _line(
                status == "Accepted",
              ),

              _step(
                "Accepted",
                status == "Accepted",
              ),
            ],
          ),

          const SizedBox(height: 24),

          /// ACTIONS
          if (showAcceptButton) ...[

            Row(
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton
                            .styleFrom(
                      backgroundColor:
                          Colors.green,
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius
                                .circular(
                                    14),
                      ),
                      padding:
                          const EdgeInsets
                              .symmetric(
                        vertical: 14,
                      ),
                    ),
                    child: Text(
                      "Accept Offer",
                      style:
                          GoogleFonts
                              .poppins(
                        color:
                            Colors.white,
                        fontWeight:
                            FontWeight
                                .w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style:
                        OutlinedButton
                            .styleFrom(
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius
                                .circular(
                                    14),
                      ),
                      padding:
                          const EdgeInsets
                              .symmetric(
                        vertical: 14,
                      ),
                    ),
                    child: Text(
                      "Decline",
                      style:
                          GoogleFonts
                              .poppins(),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),
          ],

          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "View Details →",
                style:
                    GoogleFonts.poppins(
                  fontWeight:
                      FontWeight.w600,
                  color:
                      const Color(
                          0xFF2B3674),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _statusBadge(
      String text,
      Color color) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(.1),
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style:
            GoogleFonts.poppins(
          color: color,
          fontSize: 12,
          fontWeight:
              FontWeight.w600,
        ),
      ),
    );
  }

  Widget _step(
      String title,
      bool completed) {
    return Column(
      children: [

        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: completed
                ? const Color(
                    0xFF2B3674)
                : Colors.white,
            border: Border.all(
              color: completed
                  ? const Color(
                      0xFF2B3674)
                  : const Color(
                      0xFFD1D5DB),
            ),
            shape: BoxShape.circle,
          ),
          child: completed
              ? const Icon(
                  Icons.check,
                  size: 14,
                  color:
                      Colors.white,
                )
              : null,
        ),

        const SizedBox(height: 6),

        Text(
          title,
          style:
              GoogleFonts.poppins(
            fontSize: 10,
            color:
                const Color(
                    0xFF6B7280),
          ),
        ),
      ],
    );
  }

  Widget _line(bool active) {
    return Expanded(
      child: Container(
        height: 2,
        color: active
            ? const Color(
                0xFF2B3674)
            : const Color(
                0xFFE5E7EB),
      ),
    );
  }

  Color _statusColor(
      String status) {
    switch (status) {
      case "Under Review":
        return Colors.orange;

      case "Offer Received":
        return Colors.purple;

      case "Accepted":
        return Colors.green;

      case "Rejected":
        return Colors.red;

      default:
        return Colors.blue;
    }
  }
}