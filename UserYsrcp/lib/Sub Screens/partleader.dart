import 'package:flutter/material.dart';

import '../pages/resultpage.dart';


class PartyLeader extends StatefulWidget {
  const PartyLeader({super.key});

  @override
  State<PartyLeader> createState() => _PartyLeaderState();
}

class _PartyLeaderState extends State<PartyLeader> {
  String? selectedDistrict;
  String? selectedConstituency;
  Locale _selectedLocale = const Locale('en', 'US');
  String _leaderText='Leaders Page';//Leaders Page
  String _leaderTitleText='Y S Jagan Mohan Reddy';//Leaders Page
  String _leaderDisText='        Yeduguri Sandinti Jaganmohana Reddy (born 21 December 1972), (popularly known as YS Jaganmohana Reddy or Jagan) is a businessman, politician and the second Chief Minister of Andhra Pradesh (Navyandhra) state .\n        He is the founder of Yuvajana Shramik Rythu Congress Party, an Indian political party . He is the son of former Chief Minister of Andhra Pradesh YS Rajasekhara Reddy .\n       Jaganmohan Reddy started his political career in the Indian National Congress and was first elected as a member of the Indian Lok Sabha from the Kadapa Lok Sabha constituency in May 2009 .\n      After the death of his father in a helicopter accident in 2009, he undertook a condolence tour across the state.\n       He later resigned from the party due to differences with the Indian National Congress and founded the Yuvajana Shramik Rythu Congress Party.\n            In the 2014 Andhra Pradesh Legislative Assembly elections, his party won 67 seats and became the Leader of the Opposition in the Andhra Pradesh Legislative Assembly.\n          Later he reached out to the people through a long march across the state and won 151 out of 175 seats in the 2019 Andhra Pradesh Legislative Assembly elections and became Chief Minister.';//Leaders Page
  String _selectDistrictText='Select District';
  String _selectContituencyText ='Select Contituency';
  String _submitText ='Submit';


  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updateLeaderText();
      _updateLeaderTitleText();
      _updateLeaderDisText();
      _updateSelectDistrictText();
      _updateSelectConstituencyText();
      _updateSubmitText();
    });
  }
  // Leaders Page
  void _updateLeaderText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _leaderText = 'Leaders Page';
        break;
      case 'te':
        _leaderText = 'నాయకుల పేజీ';
        break;
      default:
        _leaderText = 'Leaders Page';
    }
  }
  // Leader Title
  void _updateLeaderTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _leaderTitleText = 'Y S Jagan Mohan Reddy';
        break;
      case 'te':
        _leaderTitleText = 'వైఎస్ జగన్ మోహన్ రెడ్డి';
        break;
      default:
        _leaderTitleText = 'Y S Jagan Mohan Reddy';
    }
  }
  //Leader Discription
  void _updateLeaderDisText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _leaderDisText = '        Yeduguri Sandinti Jaganmohana Reddy (born 21 December 1972), (popularly known as YS Jaganmohana Reddy or Jagan) is a businessman, politician and the second Chief Minister of Andhra Pradesh (Navyandhra) state .\n        He is the founder of Yuvajana Shramik Rythu Congress Party, an Indian political party . He is the son of former Chief Minister of Andhra Pradesh YS Rajasekhara Reddy .\n       Jaganmohan Reddy started his political career in the Indian National Congress and was first elected as a member of the Indian Lok Sabha from the Kadapa Lok Sabha constituency in May 2009 .\n      After the death of his father in a helicopter accident in 2009, he undertook a condolence tour across the state.\n       He later resigned from the party due to differences with the Indian National Congress and founded the Yuvajana Shramik Rythu Congress Party.\n            In the 2014 Andhra Pradesh Legislative Assembly elections, his party won 67 seats and became the Leader of the Opposition in the Andhra Pradesh Legislative Assembly.\n          Later he reached out to the people through a long march across the state and won 151 out of 175 seats in the 2019 Andhra Pradesh Legislative Assembly elections and became Chief Minister.';
        break;
      case 'te':
        _leaderDisText = '       యెదుగూరి సందింటి జగన్మోహన రెడ్డి (జననం 21 డిసెంబర్ 1972), (జగన్మోహన రెడ్డి లేదా జగన్ అని ప్రసిద్ది చెందారు) ఒక వ్యాపారవేత్త, రాజకీయవేత్త మరియు ఆంధ్రప్రదేశ్ (నవ్యాంధ్ర) రాష్ట్రానికి రెండవ ముఖ్యమంత్రి.\n          అతను భారతీయ రాజకీయ పార్టీ అయిన యువజన శ్రామిక్ రైతు కాంగ్రెస్ పార్టీ స్థాపకుడు. ఈయన ఆంధ్రప్రదేశ్ మాజీ ముఖ్యమంత్రి వైఎస్ రాజశేఖరరెడ్డి కుమారుడు.\n         జగన్మోహన్ రెడ్డి తన రాజకీయ జీవితాన్ని భారత జాతీయ కాంగ్రెస్‌లో ప్రారంభించారు మరియు 2009 మేలో కడప లోక్‌సభ నియోజకవర్గం నుండి భారత లోక్‌సభ సభ్యునిగా మొదటిసారి ఎన్నికయ్యారు.\n         2009లో హెలికాప్టర్ ప్రమాదంలో అతని తండ్రి మరణించిన తరువాత, అతను రాష్ట్రవ్యాప్తంగా సంతాప యాత్ర చేపట్టాడు.\n        తర్వాత అతను భారత జాతీయ కాంగ్రెస్‌తో విభేదాల కారణంగా పార్టీకి రాజీనామా చేసి యువజన శ్రామిక్ రైతు కాంగ్రెస్ పార్టీని స్థాపించాడు.\n        2014 ఆంధ్ర ప్రదేశ్ శాసనసభ ఎన్నికలలో, అతని పార్టీ 67 స్థానాలు గెలుచుకొని ఆంధ్రప్రదేశ్ శాసనసభలో ప్రతిపక్ష నాయకునిగా.\n         తర్వాత రాష్ట్రవ్యాప్తంగా లాంగ్ మార్చ్ ద్వారా ప్రజలకు చేరువయ్యాడు మరియు 2019 ఆంధ్రప్రదేశ్ శాసనసభ ఎన్నికలలో 175 సీట్లలో 151 గెలుచుకుని ముఖ్యమంత్రి అయ్యాడు.';
        break;
      default:
        _leaderDisText = '        Yeduguri Sandinti Jaganmohana Reddy (born 21 December 1972), (popularly known as YS Jaganmohana Reddy or Jagan) is a businessman, politician and the second Chief Minister of Andhra Pradesh (Navyandhra) state .\n        He is the founder of Yuvajana Shramik Rythu Congress Party, an Indian political party . He is the son of former Chief Minister of Andhra Pradesh YS Rajasekhara Reddy .\n       Jaganmohan Reddy started his political career in the Indian National Congress and was first elected as a member of the Indian Lok Sabha from the Kadapa Lok Sabha constituency in May 2009 .\n      After the death of his father in a helicopter accident in 2009, he undertook a condolence tour across the state.\n       He later resigned from the party due to differences with the Indian National Congress and founded the Yuvajana Shramik Rythu Congress Party.\n            In the 2014 Andhra Pradesh Legislative Assembly elections, his party won 67 seats and became the Leader of the Opposition in the Andhra Pradesh Legislative Assembly.\n          Later he reached out to the people through a long march across the state and won 151 out of 175 seats in the 2019 Andhra Pradesh Legislative Assembly elections and became Chief Minister.';
    }
  }

  void _updateSelectDistrictText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _selectDistrictText = 'Select District';
        break;
      case 'te':
        _selectDistrictText = 'జిల్లాను ఎంచుకోండి';
        break;
      default:
        _selectDistrictText = 'Select District';
    }
  }

  void _updateSelectConstituencyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _selectContituencyText = 'Select Contituency';
        break;
      case 'te':
        _selectContituencyText = 'నియోజకవర్గాన్ని ఎంచుకోండి';
        break;
      default:
        _selectContituencyText = 'Select Contituency';
    }
  }

  void _updateSubmitText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _submitText = 'Submit';
        break;
      case 'te':
        _submitText = 'సమర్పించండి';
        break;
      default:
        _submitText = 'Submit';
    }
  }

  List<String> districts = [
    'KADAPA',
  ];
  Map<String, List<String>> constituencies = {
    'KADAPA': ['Badvel','Kadapa','Pulivendla','Kamalapuram','Jammalamadugu','	Proddatur','Mydukur',],
  };


  //update code for drop-down changes

  // Map<String, List<String>> constituencies = {
  //   'KARIMNAGAR': ['Karimnagar', 'Huzurabad', 'Manakondur'],
  //   'WARANGAL': ['Warangal', 'Hanamkonda', 'Kazipet'],
  //   'HYDERABAD': ['Amberpet', 'Secunderabad', 'Malkajgiri'],
  // };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {

    'KADAPA-Pulivendla': {
      'content': {
        'title': 'Y S Jagan Mohan Reddy',
        'description': '        Yeduguri Sandinti Jaganmohana Reddy (born 21 December 1972), (popularly known as YS Jaganmohana Reddy or Jagan) is a businessman, politician and the second Chief Minister of Andhra Pradesh (Navyandhra) state .\n        He is the founder of Yuvajana Shramik Rythu Congress Party, an Indian political party . He is the son of former Chief Minister of Andhra Pradesh YS Rajasekhara Reddy .\n       Jaganmohan Reddy started his political career in the Indian National Congress and was first elected as a member of the Indian Lok Sabha from the Kadapa Lok Sabha constituency in May 2009 .\n      After the death of his father in a helicopter accident in 2009, he undertook a condolence tour across the state.\n       He later resigned from the party due to differences with the Indian National Congress and founded the Yuvajana Shramik Rythu Congress Party.\n            In the 2014 Andhra Pradesh Legislative Assembly elections, his party won 67 seats and became the Leader of the Opposition in the Andhra Pradesh Legislative Assembly.\n          Later he reached out to the people through a long march across the state and won 151 out of 175 seats in the 2019 Andhra Pradesh Legislative Assembly elections and became Chief Minister.',
        'imagePath': 'assets/leaders/ysjagan.jpg',
      },
    },
  };


  void _onSubmit() {
    if (selectedDistrict != null && selectedConstituency != null) {
      String key = '$selectedDistrict-$selectedConstituency';
      Map<String, dynamic>? details = districtConstituencyDetails[key];

      if (details != null) {
        String title = details['content']['title'];
        String description = details['content']['description'];
        String imagePath = details['content']['imagePath'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              title: title,
              description: description,
              imagePath: imagePath,
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
        backgroundColor: Colors.indigo[900],
        title:  Text(_leaderText, style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontStyle: FontStyle.normal),),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _changeLanguage(const Locale('en', 'US')),
            child: Text('EN'),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => _changeLanguage(const Locale('te', 'TE')),
            child: Text('TE'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 280.0,
                  width: 280.0,
                  child: Image.asset('assets/leaders/ysjagan.jpg')),
              const SizedBox(
                height: 5,
              ),
              RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: _leaderTitleText,
                    style:  TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                textAlign: TextAlign.start,
                text:  TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: _leaderDisText,style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    wordSpacing: 2.5,
                    letterSpacing: 0.5,
                  ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
          Column(
            children: [
              DropdownButtonFormField(
                value: selectedDistrict,
                items: districts.map((district) {
                  return DropdownMenuItem(
                    value: district,
                    child: Text(district),
                  );
                }).toList(),
                onChanged: _onDistrictChanged,
                hint:  Text(_selectDistrictText),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: selectedConstituency,
                items: (selectedDistrict != null && constituencies.containsKey(selectedDistrict))
                    ? constituencies[selectedDistrict]!.map<DropdownMenuItem<String>>((constituency) {
                  return DropdownMenuItem<String>(
                    value: constituency,
                    child: Text(constituency),
                  );
                }).toList()
                    : [],
                onChanged: _onConstituencyChanged,
                hint:  Text(_selectContituencyText),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _onSubmit,
                child: Text(_submitText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
