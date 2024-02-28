import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  final trackingIdController = TextEditingController();
  DocumentSnapshot? trackingDetails;

  Future<void> fetchDetails() async {
    String trackingId = trackingIdController.text;
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('trackingId')
        .doc(trackingId)
        .get();
    setState(() {
      trackingDetails = snapshot;
    });
  }

  @override
  void dispose() {
    trackingIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Check Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,),),
        backgroundColor: Colors.indigo[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80.0,
            ),
            TextField(
              controller: trackingIdController,
              decoration:  InputDecoration(
                  suffixIcon: const Icon(
                    Icons.how_to_vote,
                    color: Colors.white,
                    size: 42.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.green[900],
                  border: OutlineInputBorder(),
                  labelText: 'Enter Tracking ID',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w900,
                  )
              ),
            ),
            const SizedBox(height: 16),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[900], // foreground
              ),
              onPressed: (){},
              icon: const Icon(
                Icons.done_outline_sharp,
                color: Colors.white,
                size: 22,
              ),
              label: const Text(
                'Fetch Details',
                style: TextStyle(
                    color: Colors.white,fontSize: 24),
              ),
            ),

            const SizedBox(height: 16),
            if (trackingDetails != null && trackingDetails!.exists)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tracking ID: ${trackingDetails!.id}',
                    style: const TextStyle(fontSize: 22),
                  ),
                  Text('name: ${trackingDetails!['name']}',style: const TextStyle(fontSize: 22)),
                  Text('city: ${trackingDetails!['city']}',style: const TextStyle(fontSize: 22) ),
                  // Access other fields using trackingDetails['fieldName']
                ],
              )
            else
              const Text('No tracking details available.'),
          ],
        ),
      ),
    );
  }
}
