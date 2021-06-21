abstract class PersonsState {}

class PersonsEmptyState extends PersonsState {}

class PersonsLoadingState extends PersonsState {}

class PersonsLoadedState extends PersonsState {
  dynamic loadedPersons;

  PersonsLoadedState({required this.loadedPersons})
      : assert(loadedPersons != null);
}

class PersonsErrorState extends PersonsState {}


