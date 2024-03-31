import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({Key? key, required this.summaryData}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            Color userAnswerColor = (data['user_answer'] == data['correct_answer'])
              ? Colors.green // Set to green if the user's answer is correct
              : Colors.red; // Set to red if the user's answer is incorrect
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,              
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color:  userAnswerColor,
                    shape:  BoxShape.circle,
                  ),
                  child: Text((((data['question_index']) as int) + 1).toString(),
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                const SizedBox(width:10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(data['question'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      ),
                      const SizedBox(height: 10),
                      Text(data['user_answer'] as String,
                      style:GoogleFonts.almarai(
                        color: userAnswerColor,
                        fontSize: 14,
                      ),),
                      const SizedBox(height: 5),
                      Text(data['correct_answer'].toString(),
                        style:GoogleFonts.almarai(
                        color: Colors.white,
                        fontSize: 14,
                      ),),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
