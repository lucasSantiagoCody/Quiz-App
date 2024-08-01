import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    

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
                 const SizedBox(
                    width: double.infinity,
                    child:  Center(
                      child: Text('Pergunta',
                      style: TextStyle(
                        fontSize: 30,
                      )),
                    )
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(300, 100)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.deepPurple[200])
                          ),
                      child: const Text("Resposta 1",
                        style: TextStyle(fontSize: 20, color: Colors.white,),
                      )
                      ),
                      
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(300, 100)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.deepPurple[200])
                          ),
                      child: const Text("Resposta 2",
                          style: TextStyle(fontSize: 20, color: Colors.white, )
                        ),
                      ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(300, 100)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.deepPurple[200])
                          ),
                      child: const Text("Resposta 3",
                        style: TextStyle(fontSize: 20, color: Colors.white,)
                      ),

                      ),
                  )

                ],
              ),
            ),
          )),
    );
  }
}
