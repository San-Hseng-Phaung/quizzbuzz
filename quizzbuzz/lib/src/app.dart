import 'package:flutter/material.dart';
import 'package:quizzbuzz/src/admin_home/admin_appbar.dart';
import 'package:quizzbuzz/src/admin_home/analytical_card.dart';
import 'package:quizzbuzz/src/admin_home/quiz_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AdminAppbar(),
        // body is the majority of the screen.
        body: Column(
                  children: [AnalyticalCard(), Expanded(child: QuizView())],
                ),
      ),
    );
  }
}

void hello() {
  print("Hello");
}
