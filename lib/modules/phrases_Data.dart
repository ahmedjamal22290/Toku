class phrasesData {
  phrasesData(
      {required this.Sound, required this.jpName, required this.enName});
  String enName, jpName, Sound;
}

List<phrasesData> phrasesDataList = [
  phrasesData(
      enName: 'Are you coming',
      jpName: 'Kimasu ka',
      Sound: 'sounds/phrases/are_you_coming.wav'),
  phrasesData(
      enName: 'How are you feeling',
      jpName: 'Go kibun wa ikagadesu ka',
      Sound: 'sounds/phrases/how_are_you_feeling.wav'),
  phrasesData(
      enName: 'I love anime',
      jpName: 'Anime daisuki',
      Sound: 'sounds/phrases/i_love_anime.wav'),
  phrasesData(
      enName: 'I love programming',
      jpName: 'Puroguramingu daisuki',
      Sound: 'sounds/phrases/i_love_programming.wav'),
  phrasesData(
      enName: 'Programming is easy',
      jpName: 'Puroguramingu wa kantan',
      Sound: 'sounds/phrases/programming_is_easy.wav'),
  phrasesData(
      enName: 'What is your name',
      jpName: 'Anata no namae wa nandesuka',
      Sound: 'sounds/phrases/what_is_your_name.wav'),
  phrasesData(
      enName: 'Where are you going',
      jpName: 'Doko ni iku no',
      Sound: 'sounds/phrases/where_are_you_going.wav'),
  phrasesData(
      enName: 'Yes im coming',
      jpName: 'Hai, kimasu',
      Sound: 'sounds/phrases/yes_im_coming.wav'),
  phrasesData(
      enName: 'Dont forget to subscribe',
      jpName: 'Kōdoku o wasurenaide kudasai',
      Sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
];
