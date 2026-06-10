import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduledCallsCard extends StatelessWidget {
  const ScheduledCallsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(0.05),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(
        children: [

          Row(
            children: [

              const Icon(
                Icons.call_outlined,
                color:
                    Color(0xFF2563EB),
              ),

              const SizedBox(width: 8),

              Text(
                "Scheduled Calls",
                style:
                    GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ],
          ),

          const SizedBox(height: 28),

          const Icon(
            Icons.phone_disabled_outlined,
            size: 44,
            color: Color(0xFF9CA3AF),
          ),

          const SizedBox(height: 14),

          Text(
            "No Upcoming Calls",
            style: GoogleFonts.poppins(
              fontWeight:
                  FontWeight.w600,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            "Your counselor will schedule calls for you.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color:
                  const Color(
                0xFF6B7280,
              ),
            ),
          ),
        ],
      ),
    );
  }
}