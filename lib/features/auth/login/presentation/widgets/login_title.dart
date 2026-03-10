import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Log in to your\naccount',
      style: GoogleFonts.nunito(
        fontSize: 32,
        fontWeight: FontWeight.w900,
        color: const Color(0xFF111827),
        height: 1.15,
      ),
    );
  }
}