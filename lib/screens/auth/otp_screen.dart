import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reset_password_screen.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int secondsRemaining = 30;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (secondsRemaining > 0) {
          setState(() {
            secondsRemaining--;
          });
        } else {
          timer.cancel();
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Widget otpBox() {
    return SizedBox(
      width: 52,
      height: 58,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: const Color(0xFF4F7CFF),
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFFE5E7EB),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFFE5E7EB),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFF4F7CFF),
              width: 2.2,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            children: [

              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFF2B3674),
                  ),
                ),
              ),

              const SizedBox(height: 5),

              SizedBox(
                height: 140,
                width: 140,
                child: Image.asset(
                  "assets/images/hat.png",
                  fit: BoxFit.contain,
                ),
              ),

              Transform.translate(
                offset: const Offset(0, -20),
                child: Column(
                  children: [

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

                    const SizedBox(height: 4),

                    Text(
                      "OTP Verification",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1F2937),
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      "Enter the 6-digit OTP sent to your email",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  otpBox(),
                  otpBox(),
                  otpBox(),
                  otpBox(),
                  otpBox(),
                  otpBox(),
                ],
              ),

              const SizedBox(height: 25),

              Text(
                secondsRemaining > 0
                    ? "Resend OTP in 00:${secondsRemaining.toString().padLeft(2, '0')}"
                    : "Didn't receive the OTP?",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF6B7280),
                ),
              ),

              if (secondsRemaining == 0)
                TextButton(
                  onPressed: () {
                    setState(() {
                      secondsRemaining = 30;
                    });

                    startTimer();
                  },
                  child: Text(
                    "Resend OTP",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF2B3674),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) =>
          const ResetPasswordScreen(),
    ),
  );
},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF2B3674),
                    elevation: 8,
                    shadowColor:
                        const Color(0xFF2B3674)
                            .withOpacity(0.35),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(18),
                    ),
                  ),
                  child: Text(
                    "Verify OTP",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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