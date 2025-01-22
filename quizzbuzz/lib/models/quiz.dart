import 'package:flutter/material.dart';

class Quiz {
  final String id;
  final String title;
  final String? descripton;
  final String? image;
  final String createdBy;
  final String status;
  final int questionCount;
  final List<String> questionIDs;

  const Quiz( 
      {required this.id,
      required this.title,
      this.descripton,
      required this.status,
      this.image,
      required this.createdBy,
      this.questionCount = 0,
      required this.questionIDs});

      @override
  bool operator ==(Object other) => other is Quiz && other.id == id;
}

List<Quiz> quizData = [
  Quiz(
      id: '1',
      title: 'Maths',
      status: 'Not started',
      descripton: 'Basic Algebra Basic Algebra Basic Algebra Basic',
      image: 'assets/images/QuizzBuzz.png',
      createdBy: 'John',
      questionCount: 50,
      questionIDs: ['1', '2']),
  Quiz(
      id: '2',
      title: 'Maths',
      descripton: 'Basic Algebra',
      status: 'completed',
      image: 'assets/images/QuizzBuzz.png',
      createdBy: 'John',
      questionCount: 50,
      questionIDs: ['1', '2']),
  Quiz(
      id: '3',
      title: 'Maths',
      descripton: 'Basic Algebra',
      status: 'Not started',
      image: 'assets/images/QuizzBuzz.png',
      createdBy: 'John',
      questionCount: 50,
      questionIDs: ['1', '2']),
  Quiz(
      id: '4',
      title: 'Maths',
      descripton: 'Basic Algebra',
      status: 'Not started',
      image: 'assets/images/QuizzBuzz.png',
      createdBy: 'John',
      questionCount: 50,
      questionIDs: ['1', '2']),
  Quiz(
      id: '1',
      title: 'Maths',
      descripton: 'Basic Algebra',
      status: 'Not started',
      image: 'assets/images/QuizzBuzz.png',
      createdBy: 'John',
      questionCount: 50,
      questionIDs: ['1', '2']),
];
