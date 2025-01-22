import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzbuzz/models/quiz.dart';
import 'package:quizzbuzz/widgets/colors.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: quizData.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (BuildContext context, int index) {
            return quizCard(quizData[index]);
          },
        ),
      ),
    );
  }
}

Widget quizCard(Quiz quiz) {
  return Card(
    color: AppColors.secondary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    elevation: 4.0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        quiz.image != null
            ? ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
                child: Image.asset(quiz.image!,
                    height: 130, width: double.infinity, fit: BoxFit.cover))
            : IntrinsicWidth(child: Image.asset('assets/images/QuizzBuzz.png')),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(quiz.title,
                      style: GoogleFonts.comme(
                          fontSize: 14,
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold)),
                  Text(quiz.status,
                      style: GoogleFonts.comme(
                          fontSize: 10, color: AppColors.complete)),
                ],
              ),
              SizedBox(height: 8.0),
              if (quiz.descripton != null)
                Text(
                  quiz.descripton!,
                  style: GoogleFonts.comme(
                      fontSize: 10, color: AppColors.textPrimary),
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              SizedBox(height: 4.0),
              RichText(
                  text: TextSpan(
                      style: GoogleFonts.comme(
                        fontSize: 10,
                        color: AppColors.textPrimary,
                      ),
                      children: [
                    TextSpan(
                        text: "${quiz.questionCount}/50",
                        style: GoogleFonts.comme(
                            fontSize: 10,
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: "questions",
                    ),
                  ]))
            ],
          ),
        ),
      ],
    ),
  );
}
