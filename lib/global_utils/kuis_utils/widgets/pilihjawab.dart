import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart'; // Sesuaikan path jika perlu

class AnswerCard extends StatelessWidget {
   AnswerCard({
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

  bool _isLocalizationKey(String text) {
    return text.startsWith('pilihan_');
  }


  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();

    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    final bool isPict = answer.startsWith('assets/');

    String textToShow = answer;
    if (!isPict && _isLocalizationKey(answer)) {
      textToShow = penerjemah.translate(answer);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: isPict
          ? Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 3,
                  color: selectedAnswerIndex != null
                      ? (isCorrectAnswer ? Colors.green : (isWrongAnswer ? Colors.red : Colors.grey.shade400))
                      : Colors.grey.shade400,
                ),
              ),
              child: Container(
                 padding: const EdgeInsets.all(8.0),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(8),
                 ),
                 child: Stack(
                   alignment: Alignment.center,
                   children: [
                     Image.asset(
                       answer,
                       height: 100,
                       fit: BoxFit.contain,
                     ),
                     if (selectedAnswerIndex != null)
                      Positioned(
                        top: 4,
                        right: 4,
                        child: isCorrectAnswer
                                  ? buildCorrectIcon()
                                  : (isWrongAnswer ? buildWrongIcon() : SizedBox.shrink()),
                      )
                   ],
                 ),
              ),
            )
          : Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: selectedAnswerIndex != null
                        ? (isCorrectAnswer ? Colors.green.shade100 : (isWrongAnswer ? Colors.red.shade100 : Colors.white))
                        : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                   width: 2,
                   color: selectedAnswerIndex != null
                       ? (isCorrectAnswer ? Colors.green : (isWrongAnswer ? Colors.red : Colors.grey.shade400))
                       : Colors.grey.shade400,
                ),
                 boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      textToShow,
                      style: TextStyle(
                        fontSize: 16,
                        color: selectedAnswerIndex != null
                                ? (isCorrectAnswer || isWrongAnswer ? Colors.white : Colors.black)
                                : Colors.black,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  if (selectedAnswerIndex != null) ...[
                    const SizedBox(width: 10),
                    isCorrectAnswer
                        ? buildCorrectIcon()
                        : (isWrongAnswer ? buildWrongIcon() : const SizedBox.shrink()),
                  ]
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