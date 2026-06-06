import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF2B3674),
            Color(0xFF4F7CFF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(
              0xFF2B3674,
            ).withOpacity(0.25),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [

          Row(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(
                          20),
                ),
                child: const Icon(
                  Icons.person,
                  size: 42,
                  color: Color(0xFF2B3674),
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Sharada Gurrala",
                      style:
                          GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight:
                            FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "sharada@example.com",
                      style:
                          GoogleFonts.poppins(
                        color:
                            Colors.white70,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [

                        const Icon(
                          Icons.public,
                          color:
                              Colors.white70,
                          size: 16,
                        ),

                        const SizedBox(
                            width: 4),

                        Text(
                          "Indian",
                          style:
                              GoogleFonts
                                  .poppins(
                            color: Colors
                                .white70,
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(
                            width: 12),

                        const Icon(
                          Icons.calendar_today,
                          color:
                              Colors.white70,
                          size: 14,
                        ),

                        const SizedBox(
                            width: 4),

                        Text(
                          "Joined 2025",
                          style:
                              GoogleFonts
                                  .poppins(
                            color: Colors
                                .white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 4,
                  ),
                ),
                child: Center(
                  child: Text(
                    "85%",
                    style:
                        GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight:
                          FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 22),

          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_outlined,
                color: Colors.white,
              ),
              label: Text(
                "Edit Profile",
                style:
                    GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight:
                      FontWeight.w600,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white24,
                ),
                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                          14),
                ),
                padding:
                    const EdgeInsets.symmetric(
                  vertical: 14,
                ),
              ),
            ),
          ),

          const SizedBox(height: 22),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color:
                  Colors.white.withOpacity(
                      0.12),
              borderRadius:
                  BorderRadius.circular(
                      18),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceAround,
              children: const [

                _StatItem(
                  value: "2",
                  label: "Applications",
                ),

                _StatItem(
                  value: "1",
                  label: "Offers",
                ),

                _StatItem(
                  value: "3/4",
                  label: "Documents",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(
          value,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight:
                FontWeight.w700,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}