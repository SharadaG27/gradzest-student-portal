import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCompletionCard extends StatelessWidget {
  const ProfileCompletionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [

              Text(
                "Profile Completion",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),

              Text(
                "85%",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          ClipRRect(
            borderRadius:
                BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.85,
              minHeight: 10,
              color: Colors.green,
              backgroundColor:
                  Colors.grey.shade200,
            ),
          ),

          const SizedBox(height: 16),

          const Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [

              Icon(Icons.check_circle,
                  color: Colors.green),

              Icon(Icons.check_circle,
                  color: Colors.green),

              Icon(Icons.check_circle,
                  color: Colors.green),

              Icon(Icons.check_circle,
                  color: Colors.green),

              Icon(Icons.radio_button_unchecked,
                  color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}