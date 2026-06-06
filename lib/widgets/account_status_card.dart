import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountStatusCard
    extends StatelessWidget {
  const AccountStatusCard({
    super.key,
  });

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
            "Account Status",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight:
                  FontWeight.w700,
            ),
          ),

          const SizedBox(height: 20),

          ListTile(
            contentPadding:
                EdgeInsets.zero,
            title:
                const Text("Profile"),
            trailing: Container(
              padding:
                  const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:
                    const Color(0xFFDCFCE7),
                borderRadius:
                    BorderRadius.circular(
                        20),
              ),
              child:
                  const Text("Active"),
            ),
          ),

          const Divider(),

          const ListTile(
            contentPadding:
                EdgeInsets.zero,
            title:
                Text("Applications"),
            trailing: Text("2"),
          ),

          const Divider(),

          const ListTile(
            contentPadding:
                EdgeInsets.zero,
            title:
                Text("Documents"),
            trailing:
                Text("3/4 Verified"),
          ),
        ],
      ),
    );
  }
}