import 'package:flutter/material.dart';
import 'package:rickandmorty/models/results.dart';
import 'package:rickandmorty/widgets/person_card.dart';

class PersonTile extends StatelessWidget {
  final Results person;

  //final int? top;
  PersonTile(this.person);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        elevation: 8,
        child: ListTile(
          leading: Image.network(person.image!),
          title: Text(person.name!),
          subtitle: Text(person.species!),
          trailing: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Center(
                    child: PersonCard(person),
                  );
                },
              );
            },
            icon: Icon(Icons.info),
          ),
        ),
      ),
    );
  }
}
