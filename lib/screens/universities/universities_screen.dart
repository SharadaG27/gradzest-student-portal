import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../profile/profile_screen.dart';
import '../../widgets/university_card.dart';
import '../../widgets/bottom_nav_bar.dart';

import '../dashboard/dashboard_screen.dart';
import '../applications/applications_screen.dart';

class UniversitiesScreen extends StatelessWidget {
  const UniversitiesScreen({super.key});

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

              Text(
                "Universities",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                "Find your perfect university",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6B7280),
                ),
              ),

              const SizedBox(height: 20),

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
            ScaffoldMessenger.of(context)
                .showSnackBar(
              const SnackBar(
                content:
                    Text("Chat screen coming soon"),
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