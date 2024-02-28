import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BoothSixData extends StatelessWidget {
  const BoothSixData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'AgeWise Data Booth-6',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white),
        ),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 200,
            ),
            FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance.collection('booth6').get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  int age18to25Count = 0;
                  int age26to35Count = 0;
                  int age36to60Count = 0;
                  int age60to150Count = 0;

                  for (var doc in snapshot.data!.docs) {
                    // Ensure 'age' is treated as an integer
                    if (doc['age'] is int) {
                      int age = doc['age'] as int; // Cast 'age' to integer
                      if (age >= 18 && age <= 25) {
                        age18to25Count++;
                      } else if (age >= 26 && age <= 35) {
                        age26to35Count++;
                      } else if (age >= 36 && age <= 60) {
                        age36to60Count++;
                      }
                      else if (age >= 60 && age <= 150) {
                        age60to150Count++;
                      }
                    } else if (doc['age'] is String) {
                      // If 'age' is stored as a String, convert it to an integer
                      int age = int.tryParse(doc['age'] as String) ?? 0;
                      if (age >= 18 && age <= 25) {
                        age18to25Count++;
                      } else if (age >= 26 && age <= 35) {
                        age26to35Count++;
                      } else if (age >= 36 && age <= 60) {
                        age36to60Count++;
                      }
                      else if (age >= 60 && age <= 150) {
                        age60to150Count++;
                      }
                    }
                  }
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '18-25 Age',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              'User Count : $age18to25Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        // Container background color
                        padding: const EdgeInsets.all(16.0),
                        // Optional padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '26-35 Age',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              'User Count : $age26to35Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        // Container background color
                        padding: const EdgeInsets.all(16.0),
                        // Optional padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '36-60 Age',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              'User Count : $age36to60Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        // Container background color
                        padding: const EdgeInsets.all(16.0),
                        // Optional padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '60 + Age',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              'User Count : $age60to150Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AgeFilterPage extends StatelessWidget {
  final String ageRange;
  final int userCount;

  const AgeFilterPage(
      {super.key, required this.ageRange, required this.userCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Age Range: $ageRange'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('User Count for $ageRange: $userCount'),
          ],
        ),
      ),
    );
  }
}