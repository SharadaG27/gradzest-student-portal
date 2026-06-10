import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

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
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
  "Recommended Universities",
  maxLines: 1,
  style: GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF111827),
  ),
),

                    const SizedBox(height: 4),

                    Text(
                      "Matched to your profile, preferences & budget",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color:
                            const Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Explore All",
                  style: GoogleFonts.poppins(
                    color:
                        const Color(0xFF2563EB),
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          _universityCard(
            university:
                "University of Toronto",
            location:
                "Toronto, Canada",
            course:
                "Computer Science",
            match: 80,
            ranking: "#18 World",
            fee: "CAD 32,500/yr",
          ),

          const SizedBox(height: 16),

          _universityCard(
            university: "TU Munich",
            location:
                "Munich, Germany",
            course: "Informatics",
            match: 75,
            ranking: "#37 World",
            fee: "EUR 2,500/yr",
          ),

          const SizedBox(height: 16),

          _universityCard(
            university:
                "University of Melbourne",
            location:
                "Melbourne, Australia",
            course: "Data Science",
            match: 72,
            ranking: "#33 World",
            fee: "AUD 42,000/yr",
          ),
        ],
      ),
    );
  }

  Widget _universityCard({
    required String university,
    required String location,
    required String course,
    required int match,
    required String ranking,
    required String fee,
  }) {
    Color badgeColor;
    Color badgeBg;

    if (match >= 80) {
      badgeColor = const Color(0xFF16A34A);
      badgeBg = const Color(0xFFDCFCE7);
    } else if (match >= 70) {
      badgeColor = const Color(0xFF2563EB);
      badgeBg = const Color(0xFFDBEAFE);
    } else {
      badgeColor = const Color(0xFFF59E0B);
      badgeBg = const Color(0xFFFEF3C7);
    }

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(20),
        border: Border.all(
          color:
              const Color(0xFFE5E7EB),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color:
                      const Color(0xFFF3F4F6),
                  borderRadius:
                      BorderRadius.circular(
                          14),
                ),
                child: Center(
                  child: Text(
                    university[0],
                    style:
                        GoogleFonts.poppins(
                      fontWeight:
                          FontWeight.w700,
                      fontSize: 18,
                      color:
                          const Color(0xFF1E3A8A),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 12),

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
                        fontSize: 15,
                        fontWeight:
                            FontWeight.w700,
                        color:
                            const Color(
                                0xFF111827),
                      ),
                    ),

                    const SizedBox(height: 3),

                    Row(
                      children: [
                        const Icon(
                          Icons
                              .location_on_outlined,
                          size: 14,
                          color: Color(
                              0xFF6B7280),
                        ),

                        const SizedBox(
                            width: 4),

                        Text(
                          location,
                          style:
                              GoogleFonts
                                  .poppins(
                            fontSize: 12,
                            color:
                                const Color(
                                    0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

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
                  "$match% Match",
                  style:
                      GoogleFonts.poppins(
                    color: badgeColor,
                    fontSize: 12,
                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Container(
            height: 4,
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius:
                  BorderRadius.circular(
                      20),
            ),
          ),

          const SizedBox(height: 14),

          Text(
            course,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight:
                  FontWeight.w600,
              color:
                  const Color(0xFF374151),
            ),
          ),

          const SizedBox(height: 12),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _tag("Preferred Country"),
              _tag("Within Budget"),
              _tag(
                  "English Score Qualified"),
            ],
          ),

          const SizedBox(height: 14),

          const Divider(),

          const SizedBox(height: 10),

          Row(
            children: [
              Icon(
                Icons.star_rounded,
                color:
                    Colors.amber.shade700,
                size: 16,
              ),

              const SizedBox(width: 4),

              Text(
                ranking,
                style:
                    GoogleFonts.poppins(
                  fontSize: 12,
                  color:
                      const Color(0xFF4B5563),
                ),
              ),

              const Spacer(),

              Text(
                fee,
                style:
                    GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight:
                      FontWeight.w600,
                  color:
                      const Color(0xFF374151),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tag(String text) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 11,
          color:
              const Color(0xFF4B5563),
          fontWeight:
              FontWeight.w500,
        ),
      ),
    );
  }
}