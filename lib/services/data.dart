import 'package:bible_quiz/services/enums/livres.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';

class Data {
  static final List<Reponse> reponses = [
    Reponse(
      id: 'r1',
      questionId: 'q1',
      texte: 'Lucifer, le porteur de Lumière',
      confirme: false,
    ),
    Reponse(
      id: 'r2',
      questionId: 'q1',
      texte: 'Gabriel, le héros de Dieu',
      confirme: true,
      versetRef: 'Luc 1 : 19',
      verset:
          'L\'ange lui répondit: Je suis Gabriel, je me tiens devant Dieu; j\'ai été envoyé pour te parler et pour t\'annoncer cette bonne nouvelle.',
    ),
    Reponse(
      id: 'r3',
      questionId: 'q1',
      texte: 'Michel, celui qui est comme Dieu',
      confirme: false,
    ),
    Reponse(
      id: 'r4',
      questionId: 'q1',
      texte: 'Apollyon, l\'ange des abîmes',
      confirme: false,
    ),
    Reponse(
      id: 'r5',
      questionId: 'q2',
      texte: 'Le premier jour',
      confirme: false,
    ),
    Reponse(
      id: 'r8',
      questionId: 'q2',
      texte: 'Le sixième jour',
      confirme: true,
      versetRef: 'Genèse 1 : 27-31',
      verset:
          'Dieu créa l\'homme à son image, il le créa à l\'image de Dieu. Il créa l\'homme et la femme. Dieu les bénit et leur dit: «Reproduisez-vous, devenez nombreux, remplissez la terre et soumettez-la! Dominez sur les poissons de la mer, sur les oiseaux du ciel et sur tout animal qui se déplace sur la terre!» Dieu dit aussi: «Je vous donne toute herbe à graine sur toute la surface de la terre, ainsi que tout arbre portant des fruits avec pépins ou noyau: ce sera votre nourriture. A tout animal de la terre, à tout oiseau du ciel et à tout ce qui se déplace sur la terre, à ce qui est animé de vie, je donne toute herbe verte pour nourriture.» Et cela se passa ainsi. Dieu regarda tout ce qu\'il avait fait, et il constata que c\'était très bon. Il y eut un soir et il y eut un matin. Ce fut le sixième jour.',
    ),
    Reponse(
      id: 'r6',
      questionId: 'q2',
      texte: 'Le troisième jour',
      confirme: false,
    ),
    Reponse(
      id: 'r7',
      questionId: 'q2',
      texte: 'Le septième jour',
      confirme: false,
    ),
  ];

  static List<Question> questions = [
    Question(
      id: 'q1',
      texte:
          'Quel ange a annoncé la naissance de Jean-Baptiste à ses parents ?',
      livre: Livres.luc,
    ),
    Question(
      id: 'q2',
      texte: 'Quel jour a été créé l\'homme ?',
      livre: Livres.luc,
    ),
  ];
}
