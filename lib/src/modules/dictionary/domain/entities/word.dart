class Word {
  final String name;
  final String pronunciation;

  Word(this.name, this.pronunciation);

  @override
  String toString() {
    return 'Word{name: $name, pronunciation: $pronunciation}';
  }
}
