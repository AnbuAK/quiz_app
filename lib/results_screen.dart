import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/quiz.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.chosenAnswers, required this.onRestart}) : super(key: key);

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            style: GoogleFonts.lato(
              color:const Color.fromARGB(198, 232, 227, 247),
              fontSize: 20,
            ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: summaryData), // Pass summaryData here
            const SizedBox(height: 30),
            OutlinedButton.icon(
            onPressed: onRestart,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(197, 249, 249, 249),
              backgroundColor:const Color.fromARGB(255, 13, 2, 75),
              ),
            icon:const Icon(Icons.refresh_rounded),
            label: const Text('Restart Quiz',
            ),
          ),
          ],
        ),
      ),
    );
  }
}
