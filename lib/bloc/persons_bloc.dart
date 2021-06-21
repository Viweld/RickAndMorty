import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/persons_event.dart';
import 'package:rickandmorty/bloc/persons_state.dart';
import 'package:rickandmorty/models/persons.dart';
import 'package:rickandmorty/services/persons_repository.dart';

class PersonsBloc extends Bloc<PersonsEvent, PersonsState> {
  final PersonsRepository personsRepository;

  PersonsBloc({required this.personsRepository}) : super(PersonsEmptyState());

  @override
  Stream<PersonsState> mapEventToState(PersonsEvent event) async* {
    if(event is PersonsLoadEvent){
      yield PersonsLoadingState();
      try{
         final Persons _loadedPersons = await personsRepository.getAllPersons();
         yield PersonsLoadedState(loadedPersons: _loadedPersons);
      }catch(_){
        yield PersonsErrorState();
      }
    }else if(event is PersonsClearEvent){
      yield PersonsEmptyState();
    }
  }
}
