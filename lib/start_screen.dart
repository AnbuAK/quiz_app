import 'dart:ffi';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
            children : [
              Image.asset(
              'assets/images/quiz-logo.png',
              width:300,
              color: const Color.fromARGB(200, 255, 255, 255),
              ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width:300,
          //   ),
          // ), 
          const SizedBox(
            height: 80,
          ), 
          Text('Learn about AI and GPT', 
            style: GoogleFonts.lato(
              color:const Color.fromARGB(198, 232, 227, 247),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(197, 249, 249, 249),
              backgroundColor: const Color.fromARGB(255, 13, 2, 75),
              ),
            icon:const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz',
            ),
          ),
        ],
      )
    );
  }
}