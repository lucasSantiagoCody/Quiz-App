import 'package:flutter/material.dart';
import 'quiz.dart';

class GameOver extends StatelessWidget {
  static const routeName = '/game-over';
  const GameOver({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as QuizArguments;

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const SizedBox(
              height: 150,
            ),
            const SizedBox(
              child: Text('Resultado',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 300,
              child: Text('Você acertou ${arguments.hits} de 10 perguntas',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple[300],
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home-page');
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(50, 20, 50, 20)),
                    overlayColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.deepPurple.shade200;
                      }

                      return null;
                    })),
                child: const Text('Play again',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
