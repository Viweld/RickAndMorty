import 'package:rickandmorty/models/persons.dart';
import 'package:rickandmorty/services/persons_api_provider.dart';

class PersonsRepository{
  final PersonsProvider _personsProvider = PersonsProvider();
  Future<Persons> getAllPersons() => _personsProvider.getPersons();
}