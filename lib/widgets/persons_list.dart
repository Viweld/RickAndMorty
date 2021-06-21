import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/persons_bloc.dart';
import 'package:rickandmorty/bloc/persons_state.dart';
import 'package:rickandmorty/models/persons.dart';
import 'package:rickandmorty/models/results.dart';
import 'package:rickandmorty/widgets/person_tile.dart';

class PersonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonsBloc, PersonsState>(
      builder: (context, state) {
        if (state is PersonsEmptyState) {
          return Center(
            child: Text('No data received. Press load.'),
          );
        }

        if (state is PersonsLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is PersonsLoadedState) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return PersonTile(state.loadedPersons.results![index]);
            },
            itemCount: state.loadedPersons.results.length,
            scrollDirection: Axis.vertical,
          );
        }

        if (state is PersonsErrorState) {
          return Center(
            child: Text('Error fetching Persons'),
          );
        }
        return Text('');
      },
    );
  }
}
