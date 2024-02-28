
import 'package:flutter/material.dart';
import 'package:usertdpone/Sub%20Screens/searchlist.dart';

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
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: const Text('Polling Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[900], // foreground
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
                    color: Colors.white, backgroundColor: Colors.red[900],fontSize: 24),
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[900],
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
                    color: Colors.white, backgroundColor: Colors.red[900],fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
