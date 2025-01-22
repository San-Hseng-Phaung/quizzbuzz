import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzbuzz/widgets/colors.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({super.key, required this.callback, required this.icon, this.text});
  final VoidCallback callback;
  final Icon icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(onPressed: callback,
    icon: icon,
    color: Color(0xff0021F5),
    style: OutlinedButton.styleFrom(shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
    side: const BorderSide(
      color: AppColors.border,
      width: 1.5),
    ),
    );
  }
}