import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: data['correct_answer'] == data['user_answer']
                  ? const Color.fromARGB(255, 115, 180, 255)
                  : const Color.fromARGB(255, 253, 89, 143),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              ((data['question_index'] as int) + 1).toString(),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data['correct_answer'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 253, 89, 143),
                  ),
                ),
                Text(data['user_answer'] as String,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 115, 180, 255),
                    )),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
