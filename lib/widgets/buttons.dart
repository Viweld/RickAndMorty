import 'package:flutter/material.dart';
import 'package:rickandmorty/bloc/persons_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/persons_event.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PersonsBloc personsBloc = BlocProvider.of<PersonsBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {personsBloc.add(PersonsLoadEvent());},
          child: Icon(Icons.cloud_download),
          backgroundColor: Colors.blue,
        ),
        FloatingActionButton(
          onPressed: () {personsBloc.add(PersonsClearEvent());},
          child: Icon(Icons.delete),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
