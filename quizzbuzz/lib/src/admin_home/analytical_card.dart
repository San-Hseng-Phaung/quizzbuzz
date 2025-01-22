import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzbuzz/widgets/colors.dart';

class AnalyticalCard extends StatefulWidget {
  const AnalyticalCard({super.key});

  @override
  State<AnalyticalCard> createState() => _AnalyticalCardState();
}

class _AnalyticalCardState extends State<AnalyticalCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
            color: AppColors.secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Total User',
                        selectionColor: AppColors.textPrimary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        '1000',
                        selectionColor: AppColors.textPrimary,
                        style: GoogleFonts.comme(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    color: AppColors.border,
                    thickness: 1,
                    width: 20,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Total User',
                        selectionColor: AppColors.textPrimary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        '1000',
                        selectionColor: AppColors.textPrimary,
                        style: GoogleFonts.comme(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(
                    color: AppColors.border,
                    thickness: 1,
                    width: 20,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Total User',
                        selectionColor: AppColors.textPrimary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        '1000',
                        selectionColor: AppColors.textPrimary,
                        style: GoogleFonts.comme(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
