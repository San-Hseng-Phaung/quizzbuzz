import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzbuzz/widgets/colors.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({super.key, required this.callback, required this.icon, required this.text});
  final VoidCallback callback;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(onPressed: callback,
      //style: outlineButtonStyle, 
      child: Text(text,
      selectionColor: AppColors.textPrimary,
      style: GoogleFonts.comme(fontSize: 14),),);
  }
}