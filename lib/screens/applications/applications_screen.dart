import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../dashboard/dashboard_screen.dart';
import '../universities/universities_screen.dart';
import '../../widgets/application_stats_card.dart';
import '../../widgets/application_timeline_card.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../profile/profile_screen.dart';

class ApplicationsScreen extends StatefulWidget {
  const ApplicationsScreen({super.key});

  @override
  State<ApplicationsScreen> createState() =>
      _ApplicationsScreenState();
}

class _ApplicationsScreenState
    extends State<ApplicationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

              // PAGE TITLE
              Text(
                "My Applications",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1F2937),
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "Track the status of all your university applications",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color(0xFF6B7280),
                ),
              ),

              const SizedBox(height: 20),

              // NEW APPLICATION BUTTON
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  label: Text(
                    "New Application",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight:
                          FontWeight.w600,
                    ),
                  ),
                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF2B3674),
                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(
                              16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // STATS CARDS
              SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal,
                child: Row(
                  children: [

                    const ApplicationStatsCard(
                      title: "All",
                      count: "2",
                      isSelected: true,
                    ),

                    const SizedBox(width: 12),

                    const ApplicationStatsCard(
                      title: "Submitted",
                      count: "0",
                    ),

                    const SizedBox(width: 12),

                    const ApplicationStatsCard(
                      title: "Review",
                      count: "1",
                    ),

                    const SizedBox(width: 12),

                    const ApplicationStatsCard(
                      title: "Offers",
                      count: "1",
                    ),

                    const SizedBox(width: 12),

                    const ApplicationStatsCard(
                      title: "Accepted",
                      count: "0",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // APPLICATION CARD 1
              const ApplicationTimelineCard(
                university:
                    "University of Toronto",
                course: "Data Science",
                intake: "Fall 2026",
                submittedDate:
                    "2025-10-15",
                status: "Under Review",
              ),

              // APPLICATION CARD 2
              const ApplicationTimelineCard(
                university:
                    "University of British Columbia",
                course: "Engineering",
                intake: "September 2026",
                submittedDate:
                    "2025-10-20",
                status:
                    "Offer Received",
                showAcceptButton: true,
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
  selectedIndex: 1,
  onTap: (index) {

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const DashboardScreen(),
        ),
      );
    }

    if (index == 1) {
      return;
    }

    if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const UniversitiesScreen(),
        ),
      );
    }

    if (index == 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Chat screen coming soon"),
        ),
      );
    }

    if (index == 4) {
      Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (_) => const ProfileScreen(),
  ),

      );
    }
  },
),
    );
  }
}