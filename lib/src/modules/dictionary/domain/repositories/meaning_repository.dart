import '../entities/meaning.dart';

abstract class IMeaningRepository {
  Future<Meaning> findByWord(final String text);
}
