import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLabelTextWidget extends StatefulWidget {
  final String? labelText;
  const CustomLabelTextWidget({super.key, this.labelText});

  @override
  State<CustomLabelTextWidget> createState() => _CustomLabelTextWidgetState();
}

class _CustomLabelTextWidgetState extends State<CustomLabelTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.labelText ?? '',
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: 15.spMin,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
