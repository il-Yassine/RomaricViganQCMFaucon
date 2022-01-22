import 'package:faucon_qcm/models/question.dart';

Quiz Objet1 = Quiz(
  question: "1.Qu'est - ce que Flutter",
  possibleAnswers: ([
    "Un SDK permettant de développer des applications crossplatform",
    "Un package permettant de développer des applications crossplatform",
    "Un framework permettant de développer des applications crossplatform",
    "Rien de tout ça"
  ]),
  correctAnswereIndex: 2,
);
Quiz Objet2 = Quiz(
  question: "2.Quelle entreprise a développé Flutter ?",
  possibleAnswers: (["Google", "Amazon", "Facebook", "Apple"]),
  correctAnswereIndex: 1,
);
Quiz Objet3 = Quiz(
  question: "3.En quelle année Flutter a t -il été développé ?",
  possibleAnswers: (["2012", "2015", "2017", "2018"]),
  correctAnswereIndex: 0,
);
Quiz Objet4 = Quiz(
  question: "4.Sur quel langage Flutter est-il basé ?",
  possibleAnswers: (["GoLang", "Rust", "PHP", "Dart"]),
  correctAnswereIndex: 3,
);
Quiz Objet5 = Quiz(
  question: "5.En Flutter, tout est ...",
  possibleAnswers: (["Stateless", "Fonction", "Widget", "Column"]),
  correctAnswereIndex: 2,
);
Quiz Objet6 = Quiz(
  question: "6.En Flutter, les widgets sont divisés en ...",
  possibleAnswers: ([
    "2 grandes catégories , , , ",
    "4 grandes catégories",
    "3 grandes catégories",
    "Pas de classification"
  ]),
  correctAnswereIndex: 0,
);
List<Quiz> AllQuizzes = [Objet1, Objet2, Objet3, Objet4, Objet5, Objet6];


