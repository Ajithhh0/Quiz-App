import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Opacity(
            opacity: 0.8,
            child: Image(
              width: 300,
              image: AssetImage('assets/images/Black_question_mark.png'),
            ),
          ),
          const SizedBox(height: 80),
          Text(
            'Flutter Demo',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
         const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {startQuiz();},
            icon: const Icon(Icons.start),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.all(25)),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
