import 'package:flutter/material.dart';

import '../pages/constituencyresult.dart';



class ConstituencyOverview extends StatefulWidget {
  const ConstituencyOverview({super.key});

  @override
  State<ConstituencyOverview> createState() => _ConstituencyOverviewState();
}

class _ConstituencyOverviewState extends State<ConstituencyOverview> {
  String? selectedDistrict;
  String? selectedConstituency;

  List<String> districts = [
    'KADAPA',
  ];
  Map<String, List<String>> constituencies = {
    'KADAPA': ['Badvel','Kadapa','Pulivendla','Kamalapuram','Jammalamadugu','	Proddatur','Mydukur',],
  };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {

    'KADAPA-Pulivendla': {
      'content': {
        'title': 'Pulivendla',
        'imageTitle': 'assets/SocialMedia/pulivendla.jpg',
        'heading': 'About:',
        'about':
        'Pulivendla Assembly constituency is a constituency in YSR district of Andhra Pradesh that elects representatives to the Andhra Pradesh Legislative Assembly in India.\n         It is one of seven assembly segments of the Kadapa Lok Sabha constituency.',
        'description': 'Mylavaram Dam:- \n      is a medium irrigation project in Andhra Pradesh, India. This barrage is located across the Penna river in Kadapa district near Mylavaram. With the completion of srisailam right bank canal, Krishna River water would be fed from Srisailam reservoir to this reservoir. The reservoir has a gross storage capacity of 9.96 tmcft.',
        'imagePath': 'assets/SocialMedia/dam.jpg',
        'imagePathOne': 'assets/SocialMedia/gandikota.jpg',
        'imagePathTwo': 'assets/SocialMedia/gandikota1.jpg',
        'descriptionOne': 'Gandikota Fort :-\n    Gandikota is a village and historical fort on the right bank of the Penna river, 15 km from Jammalamadugu in Kadapa district, Andhra Pradesh, India. The fort was the centre of power for various dynasties, such as the Kalyani Chalukyas, Pemmasani Nayakas, and the Golconda Sultanate',
        'descriptionTwo': 'Gandikota Camping;- \n     is a top destination for outdoor enthusiasts looking to escape the hustle and bustle of city life and reconnect with nature. Located in the beautiful region of Gandikota, known for its stunning views and rich history, our camp offers a variety of accommodation options to suit your needs, including tents and AC glamping tents from luxury.\n\n    At Gandikota Camping, we are committed to providing our customers with the best possible camping experience. All our campsites are equipped with basic services and access to toilets, and our staff is always available to help you if you need or have a question. We also offer a variety of activities for our guests including nature walks, rafting, Kayaking, and Rappelling.',
      }
    }
  };

  void _onSubmit() {
    if (selectedDistrict != null && selectedConstituency != null) {
      String key = '$selectedDistrict-$selectedConstituency';
      Map<String, dynamic>? details = districtConstituencyDetails[key];

      if (details != null) {
        String title = details['content']['title'];
        String imageTitle = details['content']['imageTitle'];
        String heading = details['content']['heading'];
        String about = details['content']['about'];
        String description = details['content']['description'];
        String imagePath = details['content']['imagePath'];
        String imagePathOne = details['content']['imagePathOne'];
        String imagePathTwo = details['content']['imagePathTwo'];
        String descriptionOne = details['content']['descriptionOne'];
        String descriptionTwo = details['content']['descriptionTwo'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConstituencyResult(
              title: title,
              description: description,
              imagePath: imagePath,
              imagePathOne: imagePathOne,
              imagePathTwo: imagePathTwo,
              descriptionOne: descriptionOne,
              descriptionTwo: descriptionTwo,
              about: about,
              heading: heading,
              imageTitle: imageTitle,
            ),
          ),
        );
      }
    }
  }

  void _onDistrictChanged(String? value) {
    setState(() {
      selectedDistrict = value;
      selectedConstituency = null; // Reset constituency when district changes
    });
  }

  void _onConstituencyChanged(String? value) {
    setState(() {
      selectedConstituency = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ConstituencyOverview',style: TextStyle(color: Colors.white,),),
        backgroundColor: Colors.indigo[900],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue[900],
                height: 250,
                child: Image.asset(
                  'assets/SocialMedia/kadapa.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextSpan(text: "")
                  ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.green[900],
                    border: OutlineInputBorder(),
                  ),
                  value: selectedDistrict,
                  items: districts.map((district) {
                    return DropdownMenuItem(
                      value: district,
                      child: Text(district),
                    );
                  }).toList(),
                  onChanged: _onDistrictChanged,
                  hint: const Text('Select District',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800),),
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.green[900],
                    border: OutlineInputBorder(),
                  ),
                  value: selectedConstituency,
                  items: (selectedDistrict != null &&
                          constituencies.containsKey(selectedDistrict))
                      ? constituencies[selectedDistrict]!
                          .map<DropdownMenuItem<String>>((constituency) {
                          return DropdownMenuItem<String>(
                            value: constituency,
                            child: Text(constituency),
                          );
                        }).toList()
                      : [],
                  onChanged: _onConstituencyChanged,
                  hint: const Text('Select Constituency',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800),),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text('Submit',style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.w900,fontSize: 22,),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
