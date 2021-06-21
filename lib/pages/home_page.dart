import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/persons_bloc.dart';
import 'package:rickandmorty/services/persons_repository.dart';
import 'package:rickandmorty/widgets/buttons.dart';
import 'package:rickandmorty/widgets/persons_list.dart';

class HomePage extends StatelessWidget {
  final personsRepository = PersonsRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PersonsBloc>(
      create: (context) => PersonsBloc(
        personsRepository: personsRepository,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Persons'),
          centerTitle: true,
        ),
        body: PersonsList(),
        floatingActionButton: Buttons(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
