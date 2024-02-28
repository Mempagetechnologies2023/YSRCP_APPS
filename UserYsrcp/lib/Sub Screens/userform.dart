
import 'package:flutter/material.dart';
import 'package:userysrcp/Sub%20Screens/searchlist.dart';


import '../Booths List/boothslist.dart';


class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text('Polling Info',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[900], // foreground
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchList(),
                  ),
                );
              },
              icon: const Icon(
                Icons.how_to_vote_outlined,
                color: Colors.white,
                size: 42,
              ),
              label: Text(
                'Check Voter Details',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.green[900],fontSize: 24),
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[900],
                elevation: 5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  Boothlist(),
                  ),
                );
              },
              icon: const Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 42,
              ),
              label: Text(
                'Poll Management Form',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.green[900],fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
