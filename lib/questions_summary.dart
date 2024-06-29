import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String,
                          style: GoogleFonts.lato(
                            color: Colors.brown[200],
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.pink[200],
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.green[200],
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
