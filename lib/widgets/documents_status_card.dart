import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsStatusCard
    extends StatelessWidget {
  const DocumentsStatusCard({
    super.key,
  });

  Widget doc(
    String name,
    bool verified,
  ) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(name),
      trailing: Container(
        padding:
            const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: verified
              ? const Color(0xFFDCFCE7)
              : const Color(0xFFFEF3C7),
          borderRadius:
              BorderRadius.circular(20),
        ),
        child: Text(
          verified
              ? "Verified"
              : "Pending",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            "Documents",
            style: GoogleFonts.poppins(
              fontWeight:
                  FontWeight.w700,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 10),

          doc("Passport", true),
          doc("Transcript", true),
          doc("IELTS", false),
          doc("Statement of Purpose", true),
        ],
      ),
    );
  }
}