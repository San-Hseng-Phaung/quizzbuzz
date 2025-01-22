import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzbuzz/widgets/colors.dart';

class AdminAppbar extends StatelessWidget implements PreferredSizeWidget{
  const AdminAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.textSecondary,
        leading: const IconButton(
          color: AppColors.textTertiary,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Center(
          child: Text('Dashboard', 
        style: GoogleFonts.cormorantSc(fontSize: 20, ),
        selectionColor: AppColors.textTertiary,
        textAlign: TextAlign.center,
        ),
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.notifications),
            color: AppColors.textTertiary,
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize {
    return Size.fromHeight(50.0);
  }
}