import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsStatusCard extends StatelessWidget {
  const DocumentsStatusCard({
    super.key,
  });

  Widget documentTile({
    required String title,
    required IconData fileIcon,
    required bool verified,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius:
            BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: verified
                  ? const Color(
                      0xFFDCFCE7)
                  : const Color(
                      0xFFFEF3C7),
              borderRadius:
                  BorderRadius.circular(
                      12),
            ),
            child: Icon(
              fileIcon,
              color: verified
                  ? const Color(
                      0xFF16A34A)
                  : const Color(
                      0xFFD97706),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      GoogleFonts.poppins(
                    fontWeight:
                        FontWeight.w600,
                    fontSize: 14,
                    color:
                        const Color(
                            0xFF111827),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  verified
                      ? "Verified Document"
                      : "Pending Verification",
                  style:
                      GoogleFonts.poppins(
                    fontSize: 12,
                    color:
                        const Color(
                            0xFF6B7280),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: verified
                  ? const Color(
                      0xFFDCFCE7)
                  : const Color(
                      0xFFFEF3C7),
              borderRadius:
                  BorderRadius.circular(
                      20),
            ),
            child: Text(
              verified
                  ? "Verified"
                  : "Pending",
              style:
                  GoogleFonts.poppins(
                fontSize: 12,
                fontWeight:
                    FontWeight.w600,
                color: verified
                    ? const Color(
                        0xFF16A34A)
                    : const Color(
                        0xFFD97706),
              ),
            ),
          ),

          const SizedBox(width: 12),

          IconButton(
            onPressed: () {},
            splashRadius: 18,
            padding: EdgeInsets.zero,
            constraints:
                const BoxConstraints(),
            icon: const Icon(
              Icons.delete_outline,
              size: 20,
              color: Color(
                  0xFFC4CAD4),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(
                20),
        boxShadow: [
          BoxShadow(
            color:
                Colors.black.withOpacity(
                    0.05),
            blurRadius: 10,
            offset:
                const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.folder_open_outlined,
                color:
                    Color(0xFF2563EB),
                size: 22,
              ),

              const SizedBox(width: 8),

              Text(
                "Documents Status",
                style:
                    GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w700,
                  color:
                      const Color(
                          0xFF1F2937),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
            children: [
              Text(
                "Completion",
                style:
                    GoogleFonts.poppins(
                  fontWeight:
                      FontWeight.w600,
                ),
              ),
              Text(
                "75%",
                style:
                    GoogleFonts.poppins(
                  color:
                      const Color(
                          0xFF16A34A),
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          ClipRRect(
            borderRadius:
                BorderRadius.circular(
                    10),
            child:
                LinearProgressIndicator(
              value: 0.75,
              minHeight: 8,
              backgroundColor:
                  Colors.grey.shade200,
              color:
                  const Color(
                      0xFF16A34A),
            ),
          ),

          const SizedBox(height: 20),

          documentTile(
            title: "Passport",
            fileIcon:
                Icons.badge_outlined,
            verified: true,
          ),

          documentTile(
            title:
                "Academic Transcript",
            fileIcon:
                Icons.description_outlined,
            verified: true,
          ),

          documentTile(
            title:
                "Statement of Purpose",
            fileIcon:
                Icons.article_outlined,
            verified: true,
          ),

          documentTile(
            title:
                "IELTS Score Card",
            fileIcon:
                Icons.language_outlined,
            verified: false,
          ),
        ],
      ),
    );
  }
}