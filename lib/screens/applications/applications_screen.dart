import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/app_drawer.dart';
import '../dashboard/dashboard_screen.dart';
import '../universities/universities_screen.dart';
import '../profile/profile_screen.dart';
import '../chat/chat_screen.dart';

import '../../widgets/application_timeline_card.dart';
import '../../widgets/bottom_nav_bar.dart';

class ApplicationsScreen extends StatefulWidget {
  const ApplicationsScreen({super.key});

  @override
  State<ApplicationsScreen> createState() =>
      _ApplicationsScreenState();
}

class _ApplicationsScreenState
    extends State<ApplicationsScreen> {

  String selectedFilter = "All";

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color(0xFFF8FAFC),

  drawer: const AppDrawer(),

  body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [

            /// HEADER
Row(
  children: [

    Builder(
  builder: (context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: IconButton(
        icon: const Icon(
          Icons.menu_rounded,
        ),
        onPressed: () {
          Scaffold.of(context)
              .openDrawer();
        },
      ),
    );
  },
),

    const SizedBox(width: 14),

    /// TITLE
    Expanded(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [

          Text(
            "My Applications",
            style:
                GoogleFonts.poppins(
              fontSize: 24,
              fontWeight:
                  FontWeight.w700,
              color:
                  const Color(
                0xFF1F2937,
              ),
            ),
          ),

          Text(
            "Track all university applications",
            style:
                GoogleFonts.poppins(
              fontSize: 13,
              color:
                  const Color(
                0xFF6B7280,
              ),
            ),
          ),
        ],
      ),
    ),

    /// NEW BUTTON
    Container(
      height: 44,
      decoration: BoxDecoration(
        color:
            const Color(0xFF2B3674),
        borderRadius:
            BorderRadius.circular(
          12,
        ),
      ),
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const UniversitiesScreen(),
            ),
          );
        },
        icon: const Icon(
          Icons.add,
          color: Colors.white,
          size: 18,
        ),
        label: Text(
          "New",
          style:
              GoogleFonts.poppins(
            color: Colors.white,
            fontWeight:
                FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ),
    ),
  ],
),

              const SizedBox(height: 24),

              

            
/// FILTERS
Row(
  children: [
    _primaryFilterChip(
      "All",
      selectedFilter == "All",
    ),

    const SizedBox(width: 8),

    _primaryFilterChip(
      "Review",
      selectedFilter == "Review",
    ),

    const SizedBox(width: 8),

    _primaryFilterChip(
      "Offer",
      selectedFilter == "Offer",
    ),

    const Spacer(),



Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius:
        BorderRadius.circular(12),
    border: Border.all(
      color: const Color(0xFFE5E7EB),
    ),
  ),
  child: IconButton(
    onPressed: _showMoreFilters,
    icon: const Icon(
      Icons.tune_rounded,
    ),
  ),
),
  ],
),

const SizedBox(height: 16),

Text(
  "Showing $selectedFilter Applications",
  style: GoogleFonts.poppins(
    fontSize: 14,
    color: const Color(0xFF6B7280),
  ),
),
              const SizedBox(height: 28),

              /// SECTION TITLE
              Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                children: [

                  Text(
                    "Recent Applications",
                    style:
                        GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.w600,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              /// APPLICATION CARD 1
              const ApplicationTimelineCard(
                university:
                    "University of Toronto",
                course:
                    "Data Science",
                intake:
                    "Fall 2026",
                submittedDate:
                    "2025-10-15",
                status:
                    "Under Review",
              ),

              const SizedBox(height: 16),

              /// APPLICATION CARD 2
              const ApplicationTimelineCard(
                university:
                    "University of British Columbia",
                course:
                    "Engineering",
                intake:
                    "September 2026",
                submittedDate:
                    "2025-10-20",
                status:
                    "Offer Received",
                showAcceptButton:
                    true,
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      bottomNavigationBar:
          BottomNavBar(
        selectedIndex: 1,
        onTap: (index) {

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const DashboardScreen(),
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
                builder: (_) =>
                    const UniversitiesScreen(),
              ),
            );
          }

          if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const ChatScreen(),
              ),
            );
          }

          if (index == 4) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const ProfileScreen(),
              ),
            );
          }
        },
      ),
    );
  }

   Widget _primaryFilterChip(
  String title,
  bool selected,
) {
  return GestureDetector(
    onTap: () {
      setState(() {
        selectedFilter = title;
      });
    },
    child: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: selected
            ? const Color(0xFF2B3674)
            : Colors.white,
        borderRadius:
            BorderRadius.circular(24),
        border: Border.all(
          color:
              const Color(0xFFE5E7EB),
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight:
              FontWeight.w600,
          color: selected
              ? Colors.white
              : const Color(
                  0xFF374151),
        ),
      ),
    ),
  );
}

void _showMoreFilters() {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24),
      ),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            Text(
              "More Filters",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            _filterOption(
              "Submitted",
              Icons.send,
            ),

            _filterOption(
              "Accepted",
              Icons.check,
            ),

            _filterOption(
              "Enrolled",
              Icons.school,
            ),

            _filterOption(
              "Rejected",
              Icons.close,
            ),

            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
Widget _filterOption(
  String title,
  IconData icon,
) {
  return ListTile(
    leading: Icon(icon),

    title: Text(
      title,
      style: GoogleFonts.poppins(),
    ),

    onTap: () {
      setState(() {
        selectedFilter = title;
      });

      Navigator.pop(context);
    },
  );
}
}