import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Booth38Info extends StatefulWidget {
  const Booth38Info({super.key});

  @override
  State<Booth38Info> createState() => _Booth38InfoState();
}

class _Booth38InfoState extends State<Booth38Info> {
  final CollectionReference _reference =
  FirebaseFirestore.instance.collection('booth38');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Influencer Info Booth 38',
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 20, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              StreamBuilder<QuerySnapshot>(
                stream: _reference.snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  List<String> influencerSelections = [];
                  for (var doc in snapshot.data!.docs) {
                    influencerSelections.add(doc['leaderOne']);
                    influencerSelections.add(doc['leaderTwo']);
                    influencerSelections.add(doc['leaderThree']);
                  }

                  Map<String, int> influencerCount = {};
                  for (var selection in influencerSelections) {
                    if (selection.isNotEmpty) {
                      influencerCount[selection] =
                          (influencerCount[selection] ?? 0) + 1;
                    }
                  }

                  List<MapEntry<String, int>> sortedInfluencers =
                  influencerCount.entries.toList()
                    ..sort((a, b) => b.value.compareTo(a.value));

                  // Create rows for the DataTable
                  List<DataRow> rows = [];
                  for (var i = 0; i < sortedInfluencers.length; i++) {
                    rows.add(
                      DataRow(
                        cells: [
                          DataCell(Text('${i + 1}')),
                          // S.NO
                          DataCell(Text(sortedInfluencers[i].key)),
                          // Name
                          DataCell(Text('${sortedInfluencers[i].value}')),
                          // Count
                        ],
                      ),
                    );
                  }

                  // Create the DataTable
                  DataTable table = DataTable(
                    columns: const [
                      DataColumn(label: Text('S.NO')),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Count')),
                    ],
                    rows: rows,
                  );

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.blue[400],
                      child: SingleChildScrollView(
                        child: table,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
