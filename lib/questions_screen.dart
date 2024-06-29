import 'package:flutter/material.dart';
import 'package:quiz_application/answer_button.dart';
import 'package:quiz_application/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String SelctedAnswer) {
    widget.onSelectAnswer(SelctedAnswer);
    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(
                answerText: item,
                onTap: () {
                  answerQuestion(item);
                },
              );
            })

            //  AnswerButton(
            //    answerText: currentQuestion.answers[0],
            //     onTap: () {},
            //   ),
            //   AnswerButton(
            //     answerText: currentQuestion.answers[1],
            //     onTap: () {},
            //   ),
            //   AnswerButton(
            //     answerText: currentQuestion.answers[2],
            //     onTap: () {},
            //   ),
            //   AnswerButton(
            //     answerText: currentQuestion.answers[3],
            //     onTap: () {},
            //   ),//
          ],
        ),
      ),
    );
  }
}
