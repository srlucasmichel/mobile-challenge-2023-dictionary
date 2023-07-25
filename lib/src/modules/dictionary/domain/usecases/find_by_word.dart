import '../entities/meaning.dart';
import '../repositories/meaning_repository.dart';

abstract class IFindByWord {
  Future<Meaning> call({required final String text});
}

class FindByWord implements IFindByWord {
  final IMeaningRepository repository;

  FindByWord(this.repository);

  @override
  Future<Meaning> call({required final String text}) async {
    return await repository.findByWord(text);
  }
}
