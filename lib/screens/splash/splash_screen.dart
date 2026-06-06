import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
  const Duration(seconds: 2),
  () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  },
);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          // FULL SCREEN HERO IMAGE
          Image.asset(
            "assets/images/hero_screen.png",
            fit: BoxFit.cover,
          ),

          // LIGHT OVERLAY
          Container(
            color: Colors.white.withOpacity(0.18),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [

                  const SizedBox(height: 18),

                  // HAT LOGO (TRANSPARENT PNG)
                  SizedBox(
                    height: 140,
                    width: 140,
                    child: Image.asset(
                      "assets/images/hat.png",
                      fit: BoxFit.contain,
                    ),
                  ),

                  // MOVE TITLE & TAGLINE UP
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: Column(
                      children: [

                        // GRADZEST TITLE
                        RichText(
                          text: TextSpan(
                            children: [

                              TextSpan(
                                text: "Grad",
                                style: GoogleFonts.poppins(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF2B3674),
                                  letterSpacing: -1,
                                ),
                              ),

                              TextSpan(
                                text: "zest",
                                style: GoogleFonts.poppins(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF6F8FFF),
                                  letterSpacing: -1,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 2),

                        Text(
                          "Your Global Education Journey",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  // TRUST BADGE
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        const Icon(
                          Icons.public,
                          size: 18,
                          color: Color(0xFF4F7CFF),
                        ),

                        const SizedBox(width: 8),

                        Text(
                          "Trusted by students across 40+ countries",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF4B4F75),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  const SizedBox(
                    height: 32,
                    width: 32,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: Color(0xFF4F7CFF),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    "Loading...",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF6B7280),
                    ),
                  ),

                  const SizedBox(height: 35),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}