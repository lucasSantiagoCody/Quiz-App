import 'package:flutter/material.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  static const routeName = '/quiz';
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class QuizArguments {
  final int hits;

  const QuizArguments(this.hits);
}

// tem um bag na contagem de acertos
class _QuizState extends State<Quiz> {
  int quizIndex = 0;
  int hits = 0;

  @override
  Widget build(BuildContext context) {
    List quiz = [];

    for (int i = 0; i < 10; i++) {
      quiz.add(allQuestions[i]);
    }
    void nextQuestion(int alternative) {
      if (quizIndex == 9) {
        Navigator.pushNamed(context, '/game-over',
            arguments: QuizArguments(hits));
      } else {
        int currectElternative = quiz[quizIndex]['alternativa_correcta'];

        if (alternative == currectElternative) {
          hits++;
        }
        setState(() {
          quizIndex++;
        });
      }
    }

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text('Pergunta ${quizIndex + 1} de 10',
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("${quiz[quizIndex]['pergunta']}",
                            style: const TextStyle(
                              fontSize: 30,
                            )),
                      )),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          nextQuestion(1);
                        },
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(300, 100)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.deepPurple[200]),
                          overlayColor:
                              MaterialStateProperty.all(Colors.deepPurple[300]),
                        ),
                        child: Text(
                          "${quiz[quizIndex]['alternativas'][0]}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        nextQuestion(2);
                      },
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(300, 100)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple[200]),
                        overlayColor:
                            MaterialStateProperty.all(Colors.deepPurple[300]),
                      ),
                      child: Text("${quiz[quizIndex]['alternativas'][1]}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        nextQuestion(3);
                      },
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(300, 100)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple[200]),
                        overlayColor:
                            MaterialStateProperty.all(Colors.deepPurple[300]),
                      ),
                      child: Text("${quiz[quizIndex]['alternativas'][2]}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
