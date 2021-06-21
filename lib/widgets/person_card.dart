import 'package:flutter/material.dart';
import 'package:rickandmorty/models/results.dart';

class PersonCard extends StatelessWidget {
  final Results person;

  PersonCard(this.person);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.7,
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 10,
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  person.name!,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[Text('STATUS:'), Text(person.status!)],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ), //STATUS
              Row(
                children: <Widget>[Text('SPECIES:'), Text(person.species!)],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ), //SPECIES
              Row(
                children: <Widget>[Text('GENDER:'), Text(person.gender!)],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ), //GENDER
              Row(
                children: <Widget>[Text('ORIGIN:'), Text(person.origin!.name!)],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ), //ORIGIN
              Row(
                children: <Widget>[
                  Text('LOCATION:'),
                  Text(person.location!.name!)
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ), //LOCATION
            ],
          ),
        ),
      ),
    );
  }
}
