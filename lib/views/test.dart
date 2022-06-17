import "package:bible_quiz/services/enums/livres.dart";
import "package:bible_quiz/services/models/question_model.dart";

import "../services/models/q_lang.dart";
import "../services/models/r_lang.dart";
import "../services/models/reponse_model.dart";

class Send {
  List<dynamic> gen = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel jour a été crée l'homme ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Le sixième jour",
          link: "https://bible.com/bible/93/gen.1.27-31.LSG",
          versetRef: "Gen 1:27-31",
          verset:
              "Dieu créa l’homme à son image[...] il créa l’homme et la femme. [...] ce fut le sixième jour",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le deuxième jour",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le cinquième jour",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le septième jour",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 2
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quels sont les noms des fils de Noé ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Sem, Cham et Japhet",
          link: "https://bible.com/bible/93/gen.5.32.LSG",
          versetRef: "Gen 5:32",
          verset: "Noé âgé de 500 ans, engendra Sem, Cham, Japhet",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Sem, Manassé, Jérémie",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Cham, Samson, Zacharie",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Japhet, Joseph, Ruben",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 3
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Comment s’appelle la ville où les hommes ont tenté de bâtir une tour touchant le ciel ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Babel",
          link: "https://bible.com/bible/93/gen.11.9.LSG",
          versetRef: "Gen 11:9",
          verset: "C’est pourquoi on l’appela du nom de Babel",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Mabel",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Bagel",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Béthel",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 4
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Qui sont les habitants de Sodome qui ont frappé à la porte de Lot pour connaître les anges de passage chez lui ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Les enfants jusqu’aux vieillards",
          link: "https://bible.com/bible/93/gen.19.4-5.LSG",
          versetRef: "Gen 19:4-5",
          verset:
              "Les gens de Sodome entourèrent la maison, depuis les enfants jusqu’aux vieillard [...] Fais les sortir vers nous, pour que nous les connaissions",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Seulement les hommes",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Seulement les adultes",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Seulement les femmes",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 5
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel est le nom du fils unique d’Abraham ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Isaac",
          link: "https://bible.com/bible/93/gen.22.2.LSG",
          versetRef: "Gen 22:2",
          verset: "Prends ton fils, ton unique, celui que tu aimes, Isaac",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Ismaël",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Isacar",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Oscar",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 6
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel est le nom du premier fils de Rachel ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Joseph",
          link: "https://bible.com/bible/93/gen.30.23-24.LSG",
          versetRef: "Gen 30:23-24",
          verset:
              "Elle devint enceinte, et enfanta un fils [...] Et elle lui donna le nom de Joseph",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Benjamin",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Siméon",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Lévi",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 7
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Combien de fils a eu Jacob ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "12",
          link: "https://bible.com/bible/93/gen.35.22.LSG",
          versetRef: "Gen 35:22",
          verset: "Les fils de Jacob étaient au nombre de 12",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "14",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "10",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "7",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 8
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Quelle est la signification des vaches grasses dans le rêve de Pharaon ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Sept années d’abondance",
          link: "https://bible.com/bible/93/gen.41.26-29.LSG",
          versetRef: "Gen 41:26-29",
          verset:
              "Les sept vaches belles sont sept années [...] Voici, il y aura sept années de grande abondance dans tout le pays d’Égypte",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Sept années de famine",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Sept mois d’abondance",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Sept mois de famine",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 9
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Dans quel pays a été enterré Israël ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Au pays de Canaan",
          link: "https://bible.com/bible/93/gen.50.5.LSG",
          versetRef: "Gen 50:5",
          verset:
              "Tu m’enterreras dans le sépulcre que je me suis acheté au pays de Canaan",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Au pays d’Égypte",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Au pays d’Éden",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Au pays d’Assyrie",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 10
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Combien d’années a vécu Joseph ?",
          livre: Livres.gen,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "110 ans",
          link: "https://bible.com/fr/bible/93/gen.50:26.LSG",
          versetRef: "Gen 50:26",
          verset: "Joseph mourut, âgé de 110 ans",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "50 ans",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "210 ans",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "100 ans",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
  ];

  List<dynamic> prov = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Je crie dans les rues, et j’élève la voix dans les places. Qui suis-je ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "La sagesse",
          link: "https://bible.com/fr/bible/93/pro.1:20.LSG",
          versetRef: "Prov 1:20",
          verset:
              "La sagesse crie dans les rues, elle élève sa voix dans les places",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La folie",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "L’envie",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La peur",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 2
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Je suis amère comme l’absinthe. Je ne sais pas où je vais. Et mes pas atteignent le séjour des morts. Qui suis-je ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "La femme étrangère",
          link: "https://bible.com/fr/bible/93/pro.5:3-6.LSG",
          versetRef: "Prov 5:3-6",
          verset:
              "Car les lèvres de l’étrangère distillent le miel [...] Mais à la fin elle est amère comme l’absinthe [...] Ses pas atteignent le séjour des morts [...] elle ne sait où elle va",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La mort",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Jézabel",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La nuit",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 3
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Parmi les choses suivantes, quelle est celle que l’Éternel a en horreur ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Les yeux hautains",
          link: "https://bible.com/fr/bible/93/pro.6:17.LSG",
          versetRef: "Prov 6:17",
          verset:
              "Il y a six choses que hait l’Éternel, et même sept qu’il a en horreur : les yeux hautains",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "L’humanité",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le don de soi",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La soif de connaissance",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 4
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Le commencement de la sagesse c’est :",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "La crainte de l’Éternel",
          link: "https://bible.com/fr/bible/93/pro.9:10.LSG",
          versetRef: "Prov 9:10",
          verset:
              "Le commencement de la sagesse, c’est la crainte de l’Eternel",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le début de l’orgueil",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Méditer la parole",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La crainte des hommes",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 5
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel est l’effet d’une bonne parole sur le cœur de l’homme ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Cela le réjouit",
          link: "https://bible.com/fr/bible/93/pro.12:25.LSG",
          versetRef: "Prov 12:25",
          verset:
              "L’inquiétude dans le coeur de l’homme l’abat, mais une bonne parole le réjouit",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Cela l’attriste",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Cela l’effraie",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Cela l’affaiblit",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 6
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Que représentent les cheveux blancs ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Une couronne d’honneur",
          link: "https://bible.com/fr/bible/93/pro.16:31.LSG",
          versetRef: "Prov 16:31",
          verset: "Les cheveux blancs sont une couronne d’honneur",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le début de la vieillesse",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Une maladie incurable",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "L’onction de Dieu",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 7
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Répondre avant d’avoir écouté est...",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Un acte de folie",
          link: "https://bible.com/fr/bible/93/pro.18:13.LSG",
          versetRef: "Prov 18:13",
          verset:
              "Celui qui répond avant d’avoir écouté fait un acte de folie et s’attire la confusion",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Une démonstration de sagesse",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Synonyme de querelles",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Une grâce de Dieu",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 8
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Au jour de la bataille, qui peut délivrer de l’ennemi ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "L’Éternel",
          link: "https://bible.com/fr/bible/93/pro.21:31.LSG",
          versetRef: "Prov 21:31",
          verset:
              "Le cheval est équipé pour le jour de la bataille, mais la délivrance appartient à l’Éternel",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "L’être humain par ses forces",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Un homme comme Samson",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Personne",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 9
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Si un ennemi a faim ou soif, qu’est-il conseillé de faire ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Lui donner du pain et de l’eau",
          link: "https://bible.com/fr/bible/93/pro.25:21.LSG",
          versetRef: "Prov 25:21",
          verset:
              "Si ton ennemi a faim, donne lui du pain à manger; s’il a soif, donne-lui de l’eau à boire.",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "L’empoisonner",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "L’ignorer",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "En profiter pour fuir",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 10
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quels sont les quatre petits animaux les plus sages ?",
          livre: Livres.prov,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Fourmis - lapins - sauterelles - lézard",
          link: "https://bible.com/fr/bible/93/pro.30:24-28.LSG",
          versetRef: "Prov 30:24-28",
          verset:
              "Il y a sur terre quatre petits animaux, et cependant des plus sages : les fourmis[...] les lapins[...] les sauterelles[...] le lézard",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Lapins - coccinelles - araignées - mouches",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Sauterelles - moustiques - cafards - belette",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Lézard - tortue - lièvres - cochenilles",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
  ];

  List<dynamic> esa = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "À quel arbre est comparé Israël ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "À une vigne",
          link: "https://bible.com/fr/bible/93/isa.5:7.LSG",
          versetRef: "Es 5:7",
          verset: "La vigne de l’Éternel des armées, c’est la maison d’Israël",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "À un chêne",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "À un cerisier",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "À un sapin",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 2
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Lors de sa rencontre avec le Seigneur, quel type de créature Esaïe voit-il ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Des séraphins",
          link: "https://bible.com/fr/bible/93/isa.6:2.LSG",
          versetRef: "Es 6:2",
          verset:
              "Je vis le Seigneur assis sur un trône [...] Des séraphins se tenaient au-dessus de lui",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Des chérubins",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Des anges déchus",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Des archanges",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 3
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Parmi les attributs suivants, lequel est associé à l’esprit de Dieu ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Esprit de sagesse et d’intelligence",
          link: "https://bible.com/fr/bible/93/isa.11:2.LSG",
          versetRef: "Es 11:2",
          verset:
              "Esprit de sagesse et d’intelligence, Esprit de conseil et de force, Esprit de connaissance et de crainte de l’Éternel",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Esprit de vanité et d’orgueil",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Esprit de folie et de perdition",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Esprit de peur et de faiblesse",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 4
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Pendant combien de temps la ville de Tyr est-elle tombée dans l’oubli ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Pendant 70 ans",
          link: "https://bible.com/fr/bible/93/isa.23:15.LSG",
          versetRef: "Es 23:15",
          verset: "En ce temps-là, tyr tombera dans l’oubli 70 ans",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Pendant 7 ans",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Pendant 40 ans",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Pendant 4 ans",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 5
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel est le serpent fuyard et tortueux ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Le léviathan",
          link: "https://bible.com/fr/bible/93/isa.27:1.LSG",
          versetRef: "Es 27:1",
          verset:
              "En ce jour, l’Éternel frappera de sa dure, grande et forte épée, le léviathan, serpent fuyard, le léviathan, serpent tortueux",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le monstre du Loch-Ness",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "La vouivre",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Le basilic",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 6
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel est le trésor de Sion ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "La crainte de l’Éternel",
          link: "https://bible.com/fr/bible/93/isa.33:6.LSG",
          versetRef: "Es 33:6",
          verset: "La crainte de l’Éternel, c’est le trésor de Sion",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Ses autres pierres précieuses",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Ses alliances diplomatiques",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Ses vaillants guerriers",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 7
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Dans le camp des Assyriens, combien d’hommes ont été frappé par l’ange de l’Éternel ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "185 000",
          link: "https://bible.com/fr/bible/93/isa.37:36.LSG",
          versetRef: "Es 37:36",
          verset:
              "L’ange de l’Éternel sortit, et frappa le camp des Assyriens 185 000 hommes",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "815 000",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "85 000",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "15 000",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 8
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "De combien d’année la vie du roi Ézéchias a -t-elle été prolongée ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "15 années",
          link: "https://bible.com/fr/bible/93/isa.38:5.LSG",
          versetRef: "Es 38:5",
          verset:
              "J’ai entendu ta prière, j’ai vu tes larmes. Voici j’ajouterai à tes jours 15 années",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "5 années",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "7 années",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "30 années",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 9
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Complète la phrase suivante : \"Je répandrai ... sur ta race\"",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Mon Esprit",
          link: "https://bible.com/fr/bible/93/isa.44:3.LSG",
          versetRef: "Es 44:3",
          verset:
              "Je répandrai mon Esprit sur ta race, Et ma bénédiction sur tes rejetons",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Mon onction",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Ma lumière",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Ma colère",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
    // 10
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Quel est le jeûne auquel Dieu prend plaisir ?",
          livre: Livres.es,
        ),
        en: QLang(
          texte: "",
          livre: "",
        ),
        es: QLang(
          texte: "",
          livre: "",
        ),
      ),
      "reponse 1": Reponse(
        id: "",
        questionId: "",
        confirme: true,
        fr: RLang(
          texte: "Un jeûne tourné vers son semblable",
          link: "https://bible.com/fr/bible/93/isa.58:6-7.LSG",
          versetRef: "Es 58:6-7",
          verset:
              "Voici le jeûne auquel je prends plaisir : Détache les chaînes de la méchanceté, [...] Renvoie libre les opprimés [...] Partage ton pain avec celui qui a faim [...] Et ne te détourne pas de ton semblable",
        ),
        en: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
        es: RLang(
          texte: "",
          link: "",
          versetRef: "",
          verset: "",
        ),
      ),
      "reponse 2": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Un jeûne où on s’autoflagelle",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 3": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Un jeûne sans nourriture",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
      "reponse 4": Reponse(
        id: "",
        questionId: "",
        confirme: false,
        fr: RLang(
          texte: "Un jeune comme Daniel",
        ),
        en: RLang(
          texte: "",
        ),
        es: RLang(
          texte: "",
        ),
      ),
    },
  ];
}
