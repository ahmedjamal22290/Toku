class family {
  family(
      {required this.enName,
      required this.jpName,
      required this.picName,
      required this.soundName});
  String? enName, jpName, soundName, picName;
}

List<family> familyMembersData = [
  family(
    enName: 'Grand Father',
    jpName: 'Sofu',
    picName: 'assets/images/family_members/family_grandfather.png',
    soundName: 'sounds/family_members/grandpa.mp3',
  ),
  family(
    enName: 'Grand Mother',
    jpName: 'Sobo',
    picName: 'assets/images/family_members/family_grandmother.png',
    soundName: 'sounds/family_members/grand mother.wav',
  ),
  family(
    enName: 'Father',
    jpName: 'chichi',
    picName: 'assets/images/family_members/family_father.png',
    soundName: 'sounds/family_members/father.wav',
  ),
  family(
    enName: 'Mother',
    jpName: 'haha',
    picName: 'assets/images/family_members/family_mother.png',
    soundName: 'sounds/family_members/mother.wav',
  ),
  family(
    enName: 'Older Brother',
    jpName: 'ani',
    picName: 'assets/images/family_members/family_older_brother.png',
    soundName: 'sounds/family_members/olderBro.mp3',
  ),
  family(
    enName: 'Old Sister',
    jpName: 'ane',
    picName: 'assets/images/family_members/family_older_sister.png',
    soundName: 'sounds/family_members/olderSis.mp3',
  ),
  family(
    enName: 'Son',
    jpName: 'musuko',
    picName: 'assets/images/family_members/family_son.png',
    soundName: 'sounds/family_members/son.wav',
  ),
  family(
    enName: 'daughter',
    jpName: 'musume',
    picName: 'assets/images/family_members/family_daughter.png',
    soundName: 'sounds/family_members/daughter.wav',
  ),
  family(
    enName: 'Younger Brother',
    jpName: 'otōto',
    picName: 'assets/images/family_members/family_younger_brother.png',
    soundName: 'sounds/family_members/youngerBro.mp3',
  ),
  family(
    enName: 'Younger Sister',
    jpName: 'imōto',
    picName: 'assets/images/family_members/family_younger_sister.png',
    soundName: 'sounds/family_members/younger sister.wav',
  ),
];
List<String> Rules = ['Parents', 'Sibling', 'Children', 'Sibling'];
