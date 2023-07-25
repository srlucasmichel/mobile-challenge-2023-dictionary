class Meaning {
  final String definition;
  final String? partOfSpeech;
  final List<String> synonyms;
  final List<String> hasTypes;

  //Noun
  final List<String> typeOf;
  final List<String>? hasParts;
  final List<String>? inCategory;

  //Verb
  final List<String> verbGroup;
  final List<String>? entails;
  final List<String>? derivation;
  final List<String>? examples;

  Meaning(
      {required this.definition,
      this.partOfSpeech,
      required this.synonyms,
      required this.hasTypes,
      required this.typeOf,
      this.hasParts,
      this.inCategory,
      required this.verbGroup,
      this.entails,
      this.derivation,
      this.examples});

  Meaning.empty(
      {this.definition = "",
      this.partOfSpeech,
      required this.synonyms,
      required this.hasTypes,
      required this.typeOf,
      this.hasParts,
      this.inCategory,
      required this.verbGroup,
      this.entails,
      this.derivation,
      this.examples});

  @override
  String toString() {
    return 'Meaning{definition: $definition, partOfSpeech: $partOfSpeech, synonyms: $synonyms, hasTypes: $hasTypes, typeOf: $typeOf, hasParts: $hasParts, inCategory: $inCategory, verbGroup: $verbGroup, entails: $entails, derivation: $derivation, examples: $examples}';
  }
}
