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
    Color badgeBg;
    Color badgeText;

    switch (status) {
      case "Offer Received":
        badgeBg = const Color(0xFFDCFCE7);
        badgeText = const Color(0xFF16A34A);
        break;

      case "Under Review":
        badgeBg = const Color(0xFFFEF3C7);
        badgeText = const Color(0xFFD97706);
        break;

      case "Accepted":
        badgeBg = const Color(0xFFDBEAFE);
        badgeText = const Color(0xFF2563EB);
        break;

      default:
        badgeBg = const Color(0xFFE5E7EB);
        badgeText = const Color(0xFF6B7280);
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 18),
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
        children: [
          Row(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF4FF),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    university[0],
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: const Color(0xFF2B3674),
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
                        fontWeight:
                            FontWeight.w700,
                        color:
                            const Color(0xFF111827),
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

                    const SizedBox(height: 6),

                    Text(
                      "Intake: $intake",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color:
                            const Color(0xFF9CA3AF),
                      ),
                    ),

                    Text(
                      "Submitted: $submittedDate",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color:
                            const Color(0xFF9CA3AF),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: badgeBg,
                  borderRadius:
                      BorderRadius.circular(30),
                ),
                child: Text(
                  status,
                  style: GoogleFonts.poppins(
                    color: badgeText,
                    fontWeight:
                        FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          Row(
            children: [
              _step(
                "Submitted",
                true,
                const Color(0xFF0EA5E9),
              ),

              _line(
                status == "Under Review" ||
                    status == "Offer Received" ||
                    status == "Accepted",
              ),

              _step(
                "Review",
                status == "Under Review" ||
                    status == "Offer Received" ||
                    status == "Accepted",
                const Color(0xFFF59E0B),
              ),

              _line(
                status == "Offer Received" ||
                    status == "Accepted",
              ),

              _step(
                "Offer",
                status == "Offer Received" ||
                    status == "Accepted",
                const Color(0xFF9333EA),
              ),

              _line(
                status == "Accepted",
              ),

              _step(
                "Accepted",
                status == "Accepted",
                const Color(0xFF16A34A),
              ),
            ],
          ),

          if (showAcceptButton) ...[
            const SizedBox(height: 22),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFF16A34A),
                  elevation: 0,
                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(
                            14),
                  ),
                ),
                child: Text(
                  "Accept Offer",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight:
                        FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],

          const SizedBox(height: 10),

          Align(
            alignment:
                Alignment.centerRight,
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility_outlined,
                size: 18,
                color: Color(0xFF2B3674),
              ),
              label: Text(
                "View Application Details",
                style: GoogleFonts.poppins(
                  color:
                      const Color(0xFF2B3674),
                  fontWeight:
                      FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _line(bool active) {
    return Expanded(
      child: Container(
        height: 3,
        margin:
            const EdgeInsets.only(bottom: 18),
        decoration: BoxDecoration(
          color: active
              ? const Color(0xFF2B3674)
              : const Color(0xFFE5E7EB),
          borderRadius:
              BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _step(
    String title,
    bool active,
    Color color,
  ) {
    return Column(
      children: [
        AnimatedContainer(
          duration:
              const Duration(milliseconds: 250),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active
                ? color
                : const Color(0xFFE5E7EB),
            boxShadow: active
                ? [
                    BoxShadow(
                      color:
                          color.withOpacity(0.25),
                      blurRadius: 8,
                      offset:
                          const Offset(0, 2),
                    ),
                  ]
                : [],
          ),
          child: Icon(
            active
                ? Icons.check
                : Icons.circle,
            size: active ? 16 : 8,
            color: active
                ? Colors.white
                : const Color(0xFF9CA3AF),
          ),
        ),

        const SizedBox(height: 8),

        SizedBox(
          width: 60,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: active
                  ? FontWeight.w600
                  : FontWeight.w500,
              color: active
                  ? const Color(0xFF111827)
                  : const Color(0xFF9CA3AF),
            ),
          ),
        ),
      ],
    );
  }
}