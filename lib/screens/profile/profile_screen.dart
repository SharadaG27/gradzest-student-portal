import 'package:flutter/material.dart';

import '../../widgets/profile_header_card.dart';
import '../../widgets/profile_completion_card.dart';
import '../../widgets/profile_section_card.dart';
import '../../widgets/profile_stat_box.dart';
import '../../widgets/profile_chip.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/bottom_nav_bar.dart';

import '../dashboard/dashboard_screen.dart';
import '../applications/applications_screen.dart';
import '../universities/universities_screen.dart';
import '../chat/chat_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                              BorderRadius.circular(
                            12,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(
                                0.05,
                              ),
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

                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [

                        Text(
                          "My Profile",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight:
                                FontWeight.w700,
                            color:
                                Color(0xFF1F2937),
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          "Manage your personal and academic information",
                          style: TextStyle(
                            color:
                                Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              const ProfileHeaderCard(),

              const SizedBox(height: 20),

              const ProfileCompletionCard(),

              const SizedBox(height: 20),

              /// PERSONAL INFO
              ProfileSectionCard(
                title: "Personal Information",
                icon: Icons.person_outline,
                child: Column(
                  children: [
                    infoRow(
                      "Full Name",
                      "Sharada Gurrala",
                    ),
                    infoRow(
                      "Phone",
                      "+91 XXXXX XXXXX",
                    ),
                    infoRow(
                      "Email",
                      "sharada@example.com",
                    ),
                    infoRow(
                      "Nationality",
                      "Indian",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// ACADEMIC
              ProfileSectionCard(
                title: "Academic Background",
                icon: Icons.school_outlined,
                child: GridView.count(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.2,
                  children: const [

                    ProfileStatBox(
                      icon: Icons.school,
                      value: "B.Tech",
                      label: "Degree",
                    ),

                    ProfileStatBox(
                      icon: Icons.star,
                      value: "8.5",
                      label: "CGPA",
                    ),

                    ProfileStatBox(
                      icon: Icons.language,
                      value: "7.0",
                      label: "IELTS",
                    ),

                    ProfileStatBox(
                      icon:
                          Icons.account_balance_wallet,
                      value: "\$40K",
                      label: "Budget",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// STUDY PREFERENCES
              ProfileSectionCard(
                title: "Study Preferences",
                icon: Icons.travel_explore,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    const Text(
                      "Preferred Countries",
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [

                        ProfileChip(
                          title: "Canada",
                        ),

                        ProfileChip(
                          title: "Australia",
                        ),

                        ProfileChip(
                          title: "Germany",
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Interested Courses",
                      style: TextStyle(
                        fontWeight:
                            FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [

                        ProfileChip(
                          title:
                              "Computer Science",
                        ),

                        ProfileChip(
                          title:
                              "Data Science",
                        ),

                        ProfileChip(
                          title:
                              "Artificial Intelligence",
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// DOCUMENTS
              ProfileSectionCard(
                title: "Documents",
                icon: Icons.folder_outlined,
                child: Column(
                  children: [
                    infoRow(
                      "Passport",
                      "Verified",
                    ),
                    infoRow(
                      "Transcript",
                      "Verified",
                    ),
                    infoRow(
                      "Statement of Purpose",
                      "Pending",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// ACCOUNT STATUS
              ProfileSectionCard(
                title: "Account Status",
                icon:
                    Icons.verified_user_outlined,
                child: Column(
                  children: [
                    infoRow(
                      "Profile Status",
                      "Active",
                    ),
                    infoRow(
                      "Applications",
                      "2",
                    ),
                    infoRow(
                      "Offers",
                      "1",
                    ),
                    infoRow(
                      "Documents",
                      "3/4",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 100),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        selectedIndex: 4,
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
            return;
          }
        },
      ),
    );
  }

  static Widget infoRow(
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 14,
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [

          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF6B7280),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF111827),
            ),
          ),
        ],
      ),
    );
  }
}