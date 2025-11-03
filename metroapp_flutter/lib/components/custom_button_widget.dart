import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  final String? buttonText;
  const CustomButton({super.key, this.buttonText});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Center(
        child: Text(
          widget.buttonText ?? "Button",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.spMax,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
