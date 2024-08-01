import 'package:flutter/material.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  static const routeName = '/quiz';
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [];
    
    for (int i = 0; i < 10; i++) {
      quiz.add(allQuestions[i]);
    }

    int quiz_index = 0;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text('Pergunta 1 de 10',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text("${quiz[quiz_index]['pergunta']}",
                            style: const TextStyle(
                              fontSize: 30,
                            )),
                      )),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
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
                        child:  Text(
                          "${quiz[quiz_index]['alternativas'][0]}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
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
                      child: Text("${quiz[quiz_index]['alternativas'][1]}",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
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
                      child: Text("${quiz[quiz_index]['alternativas'][2]}",
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
