import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int selectedDrawerIndex = 0;

  Widget buildDrawerItem({
    required int index,
    required IconData icon,
    required String title,
  }) {
    final bool isSelected =
        selectedDrawerIndex == index;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        gradient: isSelected
            ? const LinearGradient(
                colors: [
                  Color(0xFF1D4ED8),
                  Color(0xFF4338CA),
                ],
              )
            : null,
        color:
            isSelected ? null : Colors.transparent,
        borderRadius:
            BorderRadius.circular(14),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(14),
        ),
        leading: Icon(
          icon,
          color: isSelected
              ? Colors.white
              : const Color(0xFF64748B),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected
                ? Colors.white
                : const Color(0xFF334155),
            fontWeight: isSelected
                ? FontWeight.w600
                : FontWeight.w500,
          ),
        ),
        onTap: () {
          setState(() {
            selectedDrawerIndex = index;
          });

          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          MediaQuery.of(context).size.width *
              0.82,
      child: Drawer(
        elevation: 0,
        shape:
            const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.only(
            topRight: Radius.circular(24),
            bottomRight:
                Radius.circular(24),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.fromLTRB(
                  24,
                  28,
                  24,
                  28,
                ),
                decoration:
                    const BoxDecoration(
                  gradient: LinearGradient(
                    begin:
                        Alignment.topLeft,
                    end: Alignment
                        .bottomRight,
                    colors: [
                      Color(0xFF1D4ED8),
                      Color(0xFF4338CA),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration:
                          BoxDecoration(
                        color: Colors.white
                            .withOpacity(
                                0.18),
                        shape:
                            BoxShape.circle,
                        border: Border.all(
                          color: Colors
                              .white
                              .withOpacity(
                                  0.25),
                        ),
                      ),
                      child:
                          const Center(
                        child: Text(
                          "SG",
                          style:
                              TextStyle(
                            color: Colors
                                .white,
                            fontSize: 20,
                            fontWeight:
                                FontWeight
                                    .w700,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                        width: 16),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Text(
                            "Sharada Gurrala",
                            style:
                                TextStyle(
                              color: Colors
                                  .white,
                              fontSize: 17,
                              fontWeight:
                                  FontWeight
                                      .w700,
                            ),
                          ),
                          SizedBox(
                              height: 4),
                          Text(
                            "Student Portal",
                            style:
                                TextStyle(
                              color: Colors
                                  .white70,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ListView(
                  padding:
                      const EdgeInsets
                          .symmetric(
                    vertical: 12,
                  ),
                  children: [
                    buildDrawerItem(
                      index: 1,
                      icon: Icons.public,
                      title: "Countries",
                    ),

                    buildDrawerItem(
                      index: 2,
                      icon: Icons
                          .menu_book_outlined,
                      title: "Courses",
                    ),

                    buildDrawerItem(
                      index: 3,
                      icon: Icons
                          .folder_outlined,
                      title: "Documents",
                    ),

                    buildDrawerItem(
                      index: 4,
                      icon: Icons
                          .event_note_outlined,
                      title: "Activities",
                    ),

                    buildDrawerItem(
                      index: 5,
                      icon: Icons
                          .school_outlined,
                      title:
                          "Learning Hub",
                    ),

                    const Divider(
                      indent: 24,
                      endIndent: 24,
                    ),

                    buildDrawerItem(
                      index: 6,
                      icon:
                          Icons.settings_outlined,
                      title: "Settings",
                    ),

                    ListTile(
                      contentPadding:
                          const EdgeInsets
                              .symmetric(
                        horizontal: 24,
                      ),
                      leading:
                          const Icon(
                        Icons
                            .logout_rounded,
                        color: Colors.red,
                      ),
                      title: const Text(
                        "Logout",
                        style:
                            TextStyle(
                          color:
                              Colors.red,
                          fontWeight:
                              FontWeight
                                  .w600,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.all(
                        16),
                child: Text(
                  "Gradzest v1.0.0",
                  style: TextStyle(
                    color: Colors
                        .grey.shade500,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}