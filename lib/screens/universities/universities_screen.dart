import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../profile/profile_screen.dart';
import '../../widgets/university_card.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../chat/chat_screen.dart';
import '../dashboard/dashboard_screen.dart';
import '../applications/applications_screen.dart';
import '../../widgets/app_drawer.dart';

class UniversitiesScreen extends StatelessWidget {
  const UniversitiesScreen({super.key});

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
              color: Color(0xFF111827),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      },
    ),

    const SizedBox(width: 14),

    Expanded(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [

          Text(
            "Universities",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight:
                  FontWeight.w700,
              color:
                  const Color(0xFF1F2937),
            ),
          ),

          Text(
            "Find your perfect university",
            style: GoogleFonts.poppins(
              fontSize: 13,
              color:
                  const Color(0xFF6B7280),
            ),
          ),
        ],
      ),
    ),
  ],
),

const SizedBox(height: 24),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search Universities",
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(16),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const UniversityCard(
                university:
                    "University of Toronto",
                country: "Canada",
                course:
                    "Computer Science",
                match: 80,
              ),

              const UniversityCard(
                university: "TU Munich",
                country: "Germany",
                course: "Informatics",
                match: 75,
              ),

              const UniversityCard(
                university:
                    "University of Melbourne",
                country: "Australia",
                course: "Data Science",
                match: 72,
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        selectedIndex: 2,
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
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const ApplicationsScreen(),
              ),
            );
          }

          if (index == 2) {
            return;
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
    builder: (_) => const ProfileScreen(),
  ),
);
          }
        },
      ),
    );
  }
}