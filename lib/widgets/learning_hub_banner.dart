import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearningHubBanner
    extends StatelessWidget {
  const LearningHubBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient:
            const LinearGradient(
          colors: [
            Color(0xFF4338CA),
            Color(0xFF2563EB),
          ],
        ),
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          const CircleAvatar(
            radius: 26,
            backgroundColor:
                Colors.white24,
            child: Icon(
              Icons.school_outlined,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [

                Text(
                  "New to university applications?",
                  style:
                      GoogleFonts.poppins(
                    color:
                        Colors.white,
                    fontWeight:
                        FontWeight.w700,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  "Learn how to apply, prepare documents and get your visa.",
                  style:
                      GoogleFonts.poppins(
                    color:
                        Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}