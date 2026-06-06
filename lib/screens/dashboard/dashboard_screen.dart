import 'package:flutter/material.dart';

import '../../widgets/dashboard_header.dart';
import '../../widgets/offer_card.dart';
import '../../widgets/profile_completion_card.dart';
import '../../widgets/application_card.dart';
import '../../widgets/recommendation_card.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/documents_card.dart';
import '../profile/profile_screen.dart';
import '../applications/applications_screen.dart';
import '../universities/universities_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() =>
      _DashboardScreenState();
}

class _DashboardScreenState
    extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [

              DashboardHeader(),

              SizedBox(height: 18),

              OfferCard(),

              SizedBox(height: 18),

              ProfileCompletionCard(),

              SizedBox(height: 18),

              DocumentsCard(),

              SizedBox(height: 18),

              ApplicationCard(),

              SizedBox(height: 18),

              RecommendationCard(),

              SizedBox(height: 100),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        selectedIndex: 0,
        onTap: (index) {

          // Dashboard
          if (index == 0) {
            return;
          }

          // Applications
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const ApplicationsScreen(),
              ),
            );
          }

          // Universities
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    const UniversitiesScreen(),
              ),
            );
          }

          // Chat
          if (index == 3) {
            ScaffoldMessenger.of(context)
                .showSnackBar(
              const SnackBar(
                content:
                    Text("Chat screen coming soon"),
              ),
            );
          }

          // Profile
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