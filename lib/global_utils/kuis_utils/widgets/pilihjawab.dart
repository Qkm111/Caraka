import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.answer,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String answer;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    final isPict = answer.startsWith('assets/');
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: isPict
      ? selectedAnswerIndex != null
          ? Container(
                height: 150,
                width: 150,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isCorrectAnswer
                        ? Colors.green
                        : isWrongAnswer
                            ? Colors.red
                            : Colors.black,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        answer,
                      ),
                    ),
                    const SizedBox(height: 10),
                    isCorrectAnswer
                        ? buildCorrectIcon()
                        : isWrongAnswer
                            ? buildWrongIcon()
                            : const SizedBox.shrink(),
                  ],
                ),
          )
          : Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      answer,
                    ),
                  ),
                ],
              ),
            )
      : selectedAnswerIndex != null
          // if one option is chosen
          ? Container(
              //height: 70,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isCorrectAnswer
                      ? Colors.green
                      : isWrongAnswer
                          ? Colors.red
                          : Colors.black,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      answer,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  isCorrectAnswer
                      ? buildCorrectIcon()
                      : isWrongAnswer
                          ? buildWrongIcon()
                          : const SizedBox.shrink(),
                ],
              ),
            )
          : Container(
              //height: 70,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      answer,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

Widget buildCorrectIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.green,
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    );

Widget buildWrongIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.red,
      child: Icon(
        Icons.close,
        color: Colors.white,
      ),
    );