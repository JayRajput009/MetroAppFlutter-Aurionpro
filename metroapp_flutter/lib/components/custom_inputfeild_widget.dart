import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputfeild extends StatefulWidget {
  final String? labelText;
  final bool? isObscureText;

  const CustomInputfeild({
    super.key,
    this.labelText,
    this.isObscureText,
  });

  @override
  State<CustomInputfeild> createState() => _CustomInputfeildState();
}

class _CustomInputfeildState extends State<CustomInputfeild> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isObscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      child: TextFormField(
        obscureText: _obscureText,
        style: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
          color: Colors.black,
          fontSize: 14.spMax,
          fontWeight: FontWeight.bold,
        ),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            color: Colors.black.withOpacity(0.6),
            fontSize: 13.spMax,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: const BorderSide(color: Colors.teal),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: const BorderSide(color: Colors.teal),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          suffixIcon: widget.isObscureText == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    size: 20.spMin,
                    color: Colors.black.withOpacity(0.5),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
