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
          link: "https://bible.com/fr/bible/93/gen.1.27-31.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.5.32.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.11.9.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.19.4-5.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.22.2.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.30.23-24.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.35.22.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.41.26-29.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.50.5.LSG",
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
          link: "https://bible.com/fr/bible/93/gen.50.26.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.1.20.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.5.3-6.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.6.17.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.9.10.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.12.25.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.16.31.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.18.13.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.21.31.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.25.21.LSG",
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
          link: "https://bible.com/fr/bible/93/pro.30.24-28.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.5.7.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.6.2.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.11.2.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.23.15.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.27.1.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.33.6.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.37.36.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.38.5.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.44.3.LSG",
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
          link: "https://bible.com/fr/bible/93/isa.58.6-7.LSG",
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

  List<dynamic> lc = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Que s’est-il passé dans la vie de Zacharie, père de Jean-Baptiste, lorsqu’il n’a pas cru en l’annonce d’avoir un enfant ?",
          livre: Livres.lc,
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
          texte: "Il devient muet",
          link: "https://bible.com/fr/bible/93/luk.1.20.LSG",
          versetRef: "Lc 1:20",
          verset:
              "Et voici, tu seras muet, tu ne pourras pas parler jusqu’ai jour où ces choses arriveront, parce que tu n’as pas cru à mes paroles, qui s’accompliront en leur temps.",
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
          texte: "Il devient sourd",
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
          texte: "Il devient aveugle",
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
          texte: "La foudre s'abbat sur lui",
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
              "À quel animal est associé le Saint-Esprit lorsqu’il est descendu sur Jésus ?",
          livre: Livres.lc,
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
          texte: "Une colombe",
          link: "https://bible.com/fr/bible/93/luk.3.22.LSG",
          versetRef: "Lc 3:22",
          verset:
              "Le ciel s’ouvrit, et le Saint-Esprit descendit sur lui sous une forme corporelle, comme une colombe",
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
          texte: "Un aigle",
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
          texte: "Un papillon",
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
          texte: "Un corbeau",
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
          texte: "Qui est le maître du Sabbat ?",
          livre: Livres.lc,
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
          texte: "Le fils de l’homme",
          link: "https://bible.com/fr/bible/93/luk.6.5.LSG",
          versetRef: "Lc 6:5",
          verset: "Et il leur dit : Le Fils de l’homme est le maître du Sabbat",
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
          texte: "L’homme",
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
          texte: "La femme",
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
          texte: "Le pasteur",
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
              "Dans le lieu désert, avec quels aliments Jésus a-t-il miraculeusement nourri la foule ?",
          livre: Livres.lc,
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
          texte: "Avec 5 pains et 2 poissons",
          link: "https://bible.com/fr/bible/93/luk.9.16.LSG",
          versetRef: "Lc 9:16",
          verset:
              "Jésus prit les cinq pains et les deux poissons [...] et les donna à ses disciples afin qu’ils les distribuassent à la foule.",
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
          texte: "Avec 2 pains et 5 poissons",
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
          texte: "Avec de la manne",
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
          texte: "Avec des kebabs",
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
          texte:
              "Complète la phrase suivante : « Cherchez plutôt ... et toutes ces choses vous seront données par-dessus »",
          livre: Livres.lc,
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
          texte: "Le Royaume de Dieu",
          link: "https://bible.com/fr/bible/93/luk.12.31.LSG",
          versetRef: "Lc 12:31",
          verset:
              "Cherchez plutôt le Royaume de Dieu ; et toutes ces choses vous seront données par dessus",
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
          texte: "Les trésors de ce monde",
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
          texte: "L’amour de soi",
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
          texte: "L’amour des autres",
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
          texte: "Avec qui Jésus est-il accusé de manger ?",
          livre: Livres.lc,
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
          texte: "Les gens de mauvaise vie",
          link: "https://bible.com/fr/bible/93/luk.15.2.LSG",
          versetRef: "Lc 15:2",
          verset:
              "Cet homme accueille des gens de mauvaise vie, et mange avec eux.",
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
          texte: "Les démons",
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
          texte: "Qu'avec des justes",
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
          texte: "Les Avengers",
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
              "Que se passe t-il dans le ciel lorsqu’un seul pêcheur se repent ?",
          livre: Livres.lc,
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
          texte: "Il y a la joie devant les anges de Dieu",
          link: "https://bible.com/fr/bible/93/luk.15.10.LSG",
          versetRef: "Lc 15:10",
          verset:
              "De même, je vous le dis, il y a de la joie devant les anges de Dieu pour un seul pêcheur qui se repent",
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
          texte: "Absolument rien",
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
          texte: "La terre entière tremble",
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
          texte: "Il y a la joie devant Dieu",
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
              "A qui faut-il être semblable pour entrer dans le royaume de Dieu ?",
          livre: Livres.lc,
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
          texte: "Aux petits enfants",
          link: "https://bible.com/fr/bible/93/luk.18.16.LSG",
          versetRef: "Lc 18:16",
          verset:
              "Laissez venir à moi les petits enfants, et ne les en empêchez pas; car le royaume de Dieu est pour ceux qui leur ressemblent",
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
          texte: "Au Saint-Esprit",
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
          texte: "Aux sacrificateurs",
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
          texte: "Aux hommes",
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
              "Pour quelle raison ceux qui auront cru en Jésus seront-ils persécutés ?",
          livre: Livres.lc,
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
          texte: "À cause du nom de Jésus",
          link: "https://bible.com/fr/bible/93/luk.21.12.LSG",
          versetRef: "Lc 21:12",
          verset:
              "On mettra les mains sur vous, et l’on vous persécutera ; [...] à cause de mon nom",
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
          texte: "À cause de leur hérésie",
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
          texte: "À cause de leur apparence",
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
          texte: "Pour aucune raison",
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
          texte: "Qu’est devenu Jésus le troisième jour ?",
          livre: Livres.lc,
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
          texte: "Il est ressuscité",
          link: "https://bible.com/fr/bible/93/luk.24.6.LSG",
          versetRef: "Lc 24:6",
          verset: "Il n’est point ici, mais il est ressuscité",
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
          texte: "Il est resté dans le tombeau",
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
          texte: "Il est monté auprès du Père",
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
          texte: "Il s’est vengé de ses persécuteurs",
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

  List<dynamic> ap = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "À combien d’église est envoyé le livre de la révélation de Jean ?",
          livre: Livres.ap,
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
          texte: "7 églises",
          link: "https://bible.com/fr/bible/93/rev.1.11.LSG",
          versetRef: "Ap 1:11",
          verset:
              "Ce que tu vois, écris-le dans un livre, et envoie-le aux sept Églises.",
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
          texte: "40 églises",
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
          texte: "4 églises",
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
          texte: "70 églises",
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
          texte: "Quel est le pouvoir donné au cheval roux ?",
          livre: Livres.ap,
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
          texte: "D’enlever la paix de la terre",
          link: "https://bible.com/fr/bible/93/rev.6.4.LSG",
          versetRef: "Ap 6:4",
          verset:
              "Et il sortit un autre cheval roux. Celui qui le montait reçut le pouvoir d’enlever la paix de la terre[...]",
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
          texte: "De secourir les être humains",
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
          texte: "De changer la mer en sang",
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
          texte: "D’enlever toute trace d’eau",
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
          texte: "Qui sont ceux revêtus de robes blanches ?",
          livre: Livres.ap,
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
          texte: "Ceux qui viennent de la grande tribulation",
          link: "https://bible.com/fr/bible/93/rev.7.13-14.LSG",
          versetRef: "Ap 7:13-14",
          verset:
              "Ceux qui sont revêtus de robes blanches, qui sont-ils, et d’où viennent-ils ? [...] Ce sont ceux qui viennent de la grande tribulation ; [...] ils les ont blanchies dans le sang de l’agneau",
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
          texte: "Ceux qui ont accepté la marque de la bête",
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
          texte: "Ceux qui ont été hautains",
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
          texte: "Ceux qui ont pratiqué la divination",
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
              "Quel pouvoir a été donné aux sauterelles sorties du puits de l’abîme ?",
          livre: Livres.ap,
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
          texte: "De tourmenter certains hommes",
          link: "https://bible.com/fr/bible/93/rev.9.4-5.LSG",
          versetRef: "Ap 9:4-5",
          verset:
              "seulement aux hommes qui n’avaient pas le sceau de Dieu sur le front. Il leur fut donné [...] de les tourmenter pendant cinq mois",
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
          texte: "De tourmenter tous les hommes",
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
          texte: "De tuer certains hommes",
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
          texte: "De tuer tous les hommes",
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
          texte:
              "Quelle bête Michel et les anges combattent-ils dans le ciel ?",
          livre: Livres.ap,
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
          texte: "Le dragon",
          link: "https://bible.com/fr/bible/93/rev.12.7.LSG",
          versetRef: "Ap 12:7",
          verset:
              "Et il y eut une guerre dans le ciel. Michel et les anges combattirent contre le dragon",
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
          texte: "Lilith",
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
          texte: "La manticore",
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
          texte: "Lamia, la femme serpent",
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
          texte:
              "Sur quelle partie du corps est inscrite la marque de la bête ?",
          livre: Livres.ap,
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
          texte: "La main droite ou le front",
          link: "https://bible.com/fr/bible/93/rev.13.16.LSG",
          versetRef: "Ap 13:16",
          verset:
              "Et elle dit que tous [...] reçurent une marque sur leur main droite ou sur leur front",
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
          texte: "Le ventre ou le dos",
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
          texte: "Le pouce gauche",
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
          texte: "Sous la langue",
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
              "Lorsque la deuxième coupe de la colère de Dieu est versée, en quoi se change la mer ?",
          livre: Livres.ap,
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
          texte: "En sang",
          link: "https://bible.com/fr/bible/93/rev.16.3.LSG",
          versetRef: "Ap 16:3",
          verset:
              "Le deuxième versa sa coupe dans la mer. Et elle devint du sang [...]",
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
          texte: "En vers",
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
          texte: "En vin",
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
          texte: "En vinaigre",
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
          texte: "Quelle est la nature des jugements de Dieu ?",
          livre: Livres.ap,
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
          texte: "Justes et véritables",
          link: "https://bible.com/fr/bible/93/rev.19.2.LSG",
          versetRef: "Ap 19:2",
          verset:
              "l’honneur et la puissance sont au Seigneur notre Dieu, parce que ses jugements sont véritables et justes",
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
          texte: "Faux et mensongers",
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
          texte: "Durs et redoutables",
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
          texte: "Fous et dérangés",
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
          texte: "Qu’est-ce qui n’existera plus dans la nouvelle terre ?",
          livre: Livres.ap,
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
          texte: "Ni mort, ni deuil, ni cri, ni douleur",
          link: "https://bible.com/fr/bible/93/rev.21.4.LSG",
          versetRef: "Ap 21:4",
          verset:
              "Il essuiera toute larme de leurs yeux, et la mort ne sera plus, et il n’y aura plus ni deuil, ni cri, ni douleur",
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
          texte: "La lumière",
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
          texte: "Ni justice, ni droit, ni équité, ni vérité",
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
          texte: "La vie",
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
          texte:
              "Sans soleil ni lune, qu’est-ce qui éclairera les habitants de la nouvelle Jérusalem ?",
          livre: Livres.ap,
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
          texte: "Le Seigneur Dieu",
          link: "https://bible.com/fr/bible/93/rev.22.5.LSG",
          versetRef: "Ap 22:5",
          verset:
              "Il n’y aura plus de nuit : et ils n’auront besoin ni de lampe ni de lumière, parce que le Seigneur Dieu les éclairera.",
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
          texte: "Un nouvel astre",
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
          texte: "Le pouvoir de l’amitié",
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
          texte: "Les étoiles",
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

  List<dynamic> ex = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte:
              "Complète la phrase suivante : \"Honore ton père et ta mère...\"",
          livre: Livres.ex,
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
          texte: "7 églises",
          link: "https://bible.com/fr/bible/93/exo.20.12.LSG",
          versetRef: "Ex 20:12",
          verset: "Afin que tes jours se prolongent",
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
          texte: "Afin que tu prospères",
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
          texte: "Afin d’être honoré en retour",
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
          texte: "Afin que tu sois sauvé",
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

  List<dynamic> lev = [
    // 1
    {
      "question": Question(
        id: "",
        fr: QLang(
          texte: "Qu’est-ce que le jubilé ?",
          livre: Livres.lev,
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
          texte: "La liberté dans le pays",
          link: "https://bible.com/fr/bible/93/lev.25.10.LSG",
          versetRef: "Lev 25:10",
          verset:
              "Vous publierez la liberté dans le pays pour tous ses habitants: ce sera pour vous le jubilé",
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
          texte: "Une menace ennemi",
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
          texte: "Un vêtement sacré",
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
          texte: "Rien de biblique",
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
