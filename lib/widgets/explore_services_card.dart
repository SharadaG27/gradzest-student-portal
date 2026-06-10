import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreServicesCard extends StatelessWidget {
  const ExploreServicesCard({super.key});

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

          Row(
            children: [
              const Icon(
                Icons.flash_on_rounded,
                color: Color(0xFF2563EB),
                size: 22,
              ),

              const SizedBox(width: 8),

              Text(
                "Quick Actions",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF111827),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: const [

              Expanded(
                child: _ServiceTile(
                  icon: Icons.public,
                  title: "Countries",
                  subtitle: "Explore",
                  color: Color(0xFF2563EB),
                ),
              ),

              SizedBox(width: 12),

              Expanded(
                child: _ServiceTile(
                  icon: Icons.menu_book_rounded,
                  title: "Courses",
                  subtitle: "Programs",
                  color: Color(0xFF8B5CF6),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: const [

              Expanded(
                child: _ServiceTile(
                  icon: Icons.local_activity_outlined,
                  title: "Activities",
                  subtitle: "Events",
                  color: Color(0xFFF59E0B),
                ),
              ),

              SizedBox(width: 12),

              Expanded(
                child: _ServiceTile(
                  icon: Icons.lightbulb_outline,
                  title: "Learning Hub",
                  subtitle: "Guides",
                  color: Color(0xFF10B981),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ServiceTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const _ServiceTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius:
          BorderRadius.circular(18),
      onTap: () {},
      child: Container(
        height: 125,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(18),
          border: Border.all(
            color: const Color(
              0xFFE5E7EB,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color:
                    color.withOpacity(0.12),
                borderRadius:
                    BorderRadius.circular(
                        14),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),

            const Spacer(),

            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight:
                    FontWeight.w600,
                color:
                    const Color(
                        0xFF111827),
              ),
            ),

            const SizedBox(height: 2),

            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color:
                    const Color(
                        0xFF6B7280),
              ),
            ),
          ],
        ),
      ),
    );
  }
}