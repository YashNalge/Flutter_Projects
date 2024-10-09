import 'package:flutter/material.dart';

void main() {
  runapp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "who is the founder of Microsoft?",
      "options":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
      "correctAnswer":1,
    },
    {
      "question": "who is the founder of Apple?",
      "options":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
      "correctAnswer":1,
    },
    {
      "question": "who is the founder of Google?",
      "options":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
      "correctAnswer":1,
    },
    {
      "question": "who is the founder of SpaceX?",
      "options":["Steve Jobs","Bill Gates","Larry Page","Elon Musk"],
      "correctAnswer":1,
    },
    {
      "question": "who is the founder of Meta?",
      "options":["Steve Jobs","Mark Zukerberg","Larry Page","Elon Musk"],
      "correctAnswer":1,
    },
  ];
}
int currentQuestionIndex = 0;
int selectedAnswerIndex = -1;

WidgetStateProperty<Color?> checkAnswer (int answerIndex) {
  if (selectedAnswerIndex != -1) {
    if (answerIndex == allQuestions [currentQuestionIndex]["correctAnswer"]) {
      return const WidgetStatePropertyAll (Colors.green);
    } else if (selectedAnswerIndex == answerIndex) {
      return const WidgetStatePropertyAll (Colors.red);
    } else {
      return const WidgetStatePropertyAll (null);
    }
  } else {
    return const WidgetStatePropertyAll (null);
  }
}
bool questionPage = true;

@override
Widget build (BuildContext context) {
  return isQuestionScreen();
}
Scaffold isQuestionScreen() {
  if (questionPage == true) {
    return Scaffold(
      appBar: AppBar (
        title: const Text("Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
      ),
      body : Column(
        children: [
          const SizedBox (
            height: 30, 
          ),
          Row(
            children: [
              const SizedBox (
                width: 130, 
              ),
              Text(
                "Question: ${currentQuestionIndex + 1}/${allQuestions.length}",
                style: const TextStyle (
                  fontSize: 30,
                  fontWeight: FontWeight.w700, ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      SizedBox(
        width: 380,
        height: 50,
        child: Text(
          allQuestions [currentQuestionIndex] ["question"],
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.purple,
          ),
        ),
(

I

const SizedBox (
height: 50,
),

/// OPTION 1
SizedBox (

height: 50,

width: 350,

child: ElevatedButton(

style: ButtonStyle (

backgroundColor: checkAnswer (0),
),

onPressed: () {

if (selectedAnswerIndex == -1) { selectedAnswerIndex = 0;

setState(() {});

}

},

child: Text(

"A.

$(allQuestions [currentQuestionIndex] ['options'][0]}",

style: const TextStyle (

fontSize: 20,

fontWeight: FontWeight.w500,
color: Colors.black, ),

)

),

const SizedBox (

height: 25, ),

/// OPTION 2

SizedBox(

height: 50,

width: 350,

child: ElevatedButton (

style: ButtonStyle (

backgroundColor: checkAnswer (1), ),

onPressed: () {

if (selectedAnswerIndex -1) {
  (

selectedAnswerIndex = 1;
}

setState(() ()});

}

I

},

child: Text(

"B.

$(allQuestions [currentQuestionIndex] ['options'][1])",

style: const TextStyle (
fontSize: 20,

fontWeight: FontWeight.w500,

color: Colors.black,

),

),

)

),.

SizedBox(

height = 25, ),

/// OPTION 3 SizedBox(
height: 50,

width: 350,

child: ElevatedButton(

style = ButtonStyle( backgroundColor: checkAnswer (2), ),

onPressed = () {

if (selectedAnswerIndex == -1) {

selectedAnswerIndex = 2;

setState(() {});

} },

child = Text(

"C.

$(allQuestions [currentQuestionIndex] ['options'][2]}",

style: const TextStyle(

fontsize: 20, fontWeight: FontWeight.w500, color: Colors.black,
), ), ), ),

SizedBox( height = 25, ),

/// OPTION 4

SizedBox(

height = 50,

width = 350,

child = ElevatedButton (

onPressed: () {

if (selectedAnswerIndex == -1) {

selectedAnswerIndex = 3;

setState(() {});

}

},

style: ButtonStyle(

backgroundColor: checkAnswer (3),
),

child: Text(

"D.

${allQuestions [currentQuestionIndex] ['options'] [3]}",

style: const TextStyle(

fontSize: 20,

fontWeight: FontWeight.w500,

color: Colors.black,

),

۱۰

1,

),

floatingActionButton: FloatingActionButton(

onPressed: () {

if (selectedAnswerIndex != -1) {

/// THIS CHECK THE CONDITION AND SHOWS THE RESULT SCREEN

if (currentQuestionIndex < allQuestions.length 1) {
  (

currentQuestionIndex++;
}

} else {

questionPage = false; }

selectedAnswerIndex = -1;

setState(()());
}

},

backgroundColor: Colors.blue,

child: const Icon(

Icons.forward,
color: Colors.white,

),

),

);

} else {

return Scaffold(

appBar: AppBar(

title: const Text(

"Quiz Result",

style: TextStyle (
fontSize: 28,

fontWeight: FontWeight.w900,

color: Colors.white,

),

),

centerTitle: true,

backgroundColor: Colors.blue,

),

body:

Center(

child: Column (

mainAxisAlignment: MainAxisAlignment.center,

children: [

Image.network(

"https://t4.ftcdn.net/jpg/05/93/91/27/360_F_593912714_6pEIEP3Y1FQkbwknHEYxX Qzbne5ZN6B1E.jpg",

height: 300,

),

const SizedBox (height: 30),

const Text(

"Congratulations",

style: TextStyle(

fontSize: 30,

fontWeight: FontWeight.w900,

color: Colors.orange,
),

),

const SizedBox (height: 30),

const Text("Score:"),

1,

),

),

);
}
}
}