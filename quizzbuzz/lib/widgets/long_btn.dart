import 'package:flutter/material.dart';
import 'package:quizzbuzz/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
class LongBtn extends StatelessWidget{
  const LongBtn({super.key,
  required this.text,
   this.fillColor=true,
   this.icon,
   required this.callback,
   this.color});
  final String text;
  final bool fillColor;
  final Color? color;
  final Icon? icon;
  final VoidCallback callback;


  @override
  Widget build(BuildContext context) {
    if( fillColor == true){
      return ElevatedButton(onPressed: callback,
      style: elevatedButtonStyle(color), 
      child: Text(text, 
      selectionColor: AppColors.textTertiary,
      style: GoogleFonts.comme(fontSize: 14),),);
    }else{
      return OutlinedButton(onPressed: callback,
      style: outlineButtonStyle, 
      child: Text(text,
      selectionColor: AppColors.textPrimary,
      style: GoogleFonts.comme(fontSize: 14),),);
    }


  }
}

// Elevated Button Style
ButtonStyle elevatedButtonStyle(Color? color){
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
  backgroundColor: color ?? AppColors.primary,
  minimumSize: Size(200, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))));
}

//Outline Button Style
final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
  foregroundColor: AppColors.border,
  minimumSize: Size(100, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
);

