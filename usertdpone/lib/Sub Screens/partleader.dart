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
  String _leaderTitleText='Nara Chandrababu Naidu';//Leaders Page
  String _leaderDisText='N. Chandrababu Naidu (born April 20, 1950, Naravaripalli, near Tirupati, India) Indian politician who, as head of the Telugu Desam Party (TDP), was the chief minister (head of government) of Andhra Pradesh state (1995–2004 and 2014–19) in southeastern India and became an important figure in Indian politics at the national level.';//Leaders Page
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
        _leaderTitleText = 'Nara Chandrababu Naidu';
        break;
      case 'te':
        _leaderTitleText = 'నారా చంద్రబాబు నాయుడు';
        break;
      default:
        _leaderTitleText = 'Nara Chandrababu Naidu';
    }
  }
  //Leader Discription
  void _updateLeaderDisText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _leaderDisText = 'N. Chandrababu Naidu (born April 20, 1950, Naravaripalli, near Tirupati, India) Indian politician who, as head of the Telugu Desam Party (TDP), was the chief minister (head of government) of Andhra Pradesh state (1995–2004 and 2014–19) in southeastern India and became an important figure in Indian politics at the national level.';
        break;
      case 'te':
        _leaderDisText = 'N. చంద్రబాబు నాయుడు (జననం ఏప్రిల్ 20, 1950, నారావారిపల్లి, తిరుపతికి సమీపంలో, భారతదేశం) భారతీయ రాజకీయ నాయకుడు, తెలుగుదేశం పార్టీ (TDP) అధినేతగా, ఆంధ్రప్రదేశ్ రాష్ట్ర (1995–2004) ముఖ్యమంత్రి (ప్రభుత్వ అధిపతి) మరియు 2014–19) ఆగ్నేయ భారతదేశంలో మరియు జాతీయ స్థాయిలో భారత రాజకీయాల్లో ముఖ్యమైన వ్యక్తిగా మారారు.';
        break;
      default:
        _leaderDisText = 'N. Chandrababu Naidu (born April 20, 1950, Naravaripalli, near Tirupati, India) Indian politician who, as head of the Telugu Desam Party (TDP), was the chief minister (head of government) of Andhra Pradesh state (1995–2004 and 2014–19) in southeastern India and became an important figure in Indian politics at the national level.';
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
    'CHITTOOR',
    'ADILABAD',
    'BHADRADRI KOTHAGUDEM',
    'HYDERABAD',
    'JAGTIAL',
    'JANGOAN',
    'JAYASHANKAR BHOOPALPALLY',
    'JOGULAMBA GADWAL',
    'KAMAREDDY',
    'KARIMNAGAR',
    'KHAMMAM',
    'KOMARAM BHEEM ASIFABAD',
    'MAHABUBABAD',
    'MAHABUBNAGAR',
    'MANCHERIAL',
    'MEDAK',
    'MEDCHAL-MALKAJGIRI',
    'MULUG',
    'NAGARKURNOOL',
    'NALGONDA',
    'NARAYANPET',
    'NIRMAL',
    'NIZAMABAD',
    'PEDDAPALLI',
    'RAJANNA SIRCILLA',
    'RANGAREDDY',
    'SANGAREDDY',
    'SIDDIPET',
    'SURYAPET',
    'VIKARABAD',
    'WANAPARTHY',
    'WARANGAL RURAL',
    'WARANGAL URBAN',
    'YADADRI BHUVANAGIRI',
  ];
  Map<String, List<String>> constituencies = {
    'CHITTOOR': ['Kuppam',],
    'ADILABAD': ['Boath', 'adilabad', 'Constituency 3A'],
    'BHADRADRI KOTHAGUDEM': ['Yellandu(ST)','Kothagudem','Aswaraopeta(ST)','Pinapaka(ST)','Bhadrachalam(ST)'],
    'HYDERABAD': ['Musheerabad','Malakpet','Amberpet','Khairatabad','Jubilee Hills','Sanathnagar','Nampally','Karwan','Goshamahal','Charminar','Chandrayangutta','Yakutpura','Bahadurpura','Secunderabad','Secunderabad Cantt(SC)'],
    'JAGTIAL': ['Dharmapuri(SC)','Koratla', 'Jagtial'],
    'JANGOAN': ['Jangaon','Ghanpur','Palakurthi'],
    'JAYASHANKAR BHOOPALPALLY': ['Bhupalpalle'],
    'JOGULAMBA GADWAL': ['Gadwal','Alampur(SC)'],
    'KAMAREDDY': ['Jukkal(SC)','Yellareddy','Kamareddy'],
    'KARIMNAGAR': ['Karimnagar','Choppadandi(SC)','Manakondur(SC)','Huzurabad'],
    'KHAMMAM': ['Khammam','Palair','Madhira(SC)','Wyra(ST)','Sathupalle(SC)'],
    'KOMARAM BHEEM ASIFABAD': ['Sirpur', 'Asifabad'],
    'MAHABUBABAD': ['Dornakal(ST)','Mahabubabad(ST)'],
    'MAHABUBNAGAR': ['Mahbubnagar','Jadcherla','Devarkadra'],
    'MANCHERIAL': ['Chennur', 'mancherial', 'Bellampalli'],
    'MEDAK': ['Narsapur','Medak'],
    'MEDCHAL-MALKAJGIRI': ['Medchal','Malkajgiri','Quthbullapur','Kukatpally','Uppal'],
    'MULUG': ['Mulugu(ST)'],
    'NAGARKURNOOL': ['Kollapur','Nagarkurnool','Achampet(SC)'],
    'NALGONDA': ['Nakrekal(SC)','Nalgonda','Munugode','Devarakonda(ST)','Nagarjuna Sagar','Miryalaguda'],
    'NARAYANPET': ['Makthal','Narayanpet'],
    'NIRMAL': ['Mudhole', 'nirmal', 'Khanapur'],
    'NIZAMABAD': ['Banswada','Armur','Bodhan','Nizamabad (Urban)','Nizamabad (Rural)','Balkonda'],
    'PEDDAPALLI': ['Ramagundam','Manthani','Peddapalle'],
    'RAJANNA SIRCILLA': ['Vemulawada','Sircilla'],
    'RANGAREDDY': ['Kalwakurthy','Shadnagar','Ibrahimpatnam','Lal Bahadur Nagar','Maheswaram','Rajendranagar','Serilingampally','Chevella(SC)'],
    'SANGAREDDY': ['Zaheerabad(SC)','Sangareddy','Patancheru','Narayankhed','Andole(SC)'],
    'SIDDIPET': ['Dubbak','Gajwel','Husnabad','Siddipet'],
    'SURYAPET': ['Huzurnagar','Kodad','Thungathurthi(SC)'],
    'VIKARABAD': ['Pargi','Vicarabad(SC)','Tandur','Kodangal'],
    'WANAPARTHY': ['Wanaparthy'],
    'WARANGAL RURAL': ['Narsampet','Parkal'],
    'WARANGAL URBAN': ['Warangal West','Warangal East','Waradhanapet(SC)'],
    'YADADRI BHUVANAGIRI': ['Alair','Bhongir'],
  };


  //update code for drop-down changes

  // Map<String, List<String>> constituencies = {
  //   'KARIMNAGAR': ['Karimnagar', 'Huzurabad', 'Manakondur'],
  //   'WARANGAL': ['Warangal', 'Hanamkonda', 'Kazipet'],
  //   'HYDERABAD': ['Amberpet', 'Secunderabad', 'Malkajgiri'],
  // };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {

    'CHITTOOR-Kuppam': {
      'content': {
        'title': 'Chandra Babu Naidu',
        'description': 'N. Chandrababu Naidu (born April 20, 1950, Naravaripalli, near Tirupati, India) Indian politician who, as head of the Telugu Desam Party (TDP), was the chief minister (head of government) of Andhra Pradesh state (1995–2004 and 2014–19) in southeastern India and became an important figure in Indian politics at the national level.\n\n    Naidu was born to a farming family in a small village near Tirupati in what is now southeastern Andhra Pradesh. He was initiated into politics during his student days at Sri Venkateswara University College of Arts in Tirupati, where he received a bachelor’s degree in 1972, and he continued with postgraduate studies at the larger university. He had joined the Indian National Congress (Congress Party), and in 1975–77, during the period of emergency rule imposed by then prime minister Indira Gandhi, he served as the local youth president of the party. He subsequently discontinued his studies to pursue a career in politics.\n\n    Naidu became a confidant of Sanjay Gandhi, Indira’s eldest son, and in 1978 he ran for and was elected to a seat in the Andhra Pradesh state legislative assembly. While in office he also was a minister (1980–83) in the state cabinet. During that period he married the daughter of Nandamuri Taraka Rama Rao (NTR), a superstar of Telugu-language films and founder of the TDP who served three terms as chief minister of Andhra Pradesh. Naidu lost his bid for reelection to the assembly in 1983 in the TDP sweep of the state elections that year, and he joined the new party.',
        'imagePath': 'assets/Leaders/cbnleader.jpg',
      },
    },
    'KOMARAM BHEEM ASIFABAD-Asifabad':{
      'content' : {
        'title':'',
        'description' : '',
        'imagePath' : 'assets/adilabad-'
      }
    },
    'RAJANNA SIRCILLA-Sircilla':{
      'content' : {
        'title':'KTR',
        'description' : 'Kalvakuntla Taraka Rama Rao, popularly known as KTR, is the Working President of TRS Party and the Cabinet Minister for IT E&C, MA&UD and Industries & Commerce Departments of Telangana government.KTR has embarked upon an aggressive path to develop the IT and high-tech industry in the new State after assuming office. He has led efforts that successfully doubled the IT exports from Telangana in a span of five years. He has already taken up several initiatives includes creating proactive and business-friendly Industrial, IT and Electronics policies; facilitating electronics manufacturing ecosystem in the State; promoting entrepreneurship through creation of T Hub – India’s largest incubator for startups; generating skilled workers through Telangana Academy of Skill and Knowledge (TASK); offering quality education and training to identified groups through State-run Satellite Communications Network i.e. T-SAT, an exclusive start-up incubator for women entrepreneurs — We Hub; India’s largest prototyping centre for electronics, electromechanical and mechanical startups – T-Works; a key initiative to further improve the quality of citizen service delivery by leveraging the deep penetration of mobile usage in the state -T App Folio; declaring 2020 as the ‘Year of AI’ (Artificial Intelligence); to foster innovation driven economy in Telangana – TSIC (Telangana State Innovation Cell); for speedy processing of various clearances required for setting up of industries at a single point based on the self-certification – TS-iPASS (Telangana State Industrial Project Approval and Self-Certification System); Telangana State Building Permission Approval and Self-Certification System- TS-bPASS. Etela Rajender joined BRS in 2003. He is recognised as a student leader with a left-wing ideology.',
        'imagePath' : 'assets/images/ktr.jpg'
      }
    },
    'SIDDIPET-Siddipet' : {
      'content' : {
        'title':'Thaneeru Harish Rao',
        'description' : 'Thaneeru Harish Rao (born 3 June 1972) is an Indian politician serving as the Minister of Medical - Health and Finance Department of Telangana since 08 September 2019. He is the MLA from Siddipet constituency from the Bharat Rashtra Samithi party since 2004.Between 2014 and 2018, Rao served as Minister for Irrigation, Marketing & Legislative Affairs of Telangana. With his win at the 2018 assembly election, Rao became the youngest six-time member of any legislative assembly in India.] He was appointed as the Minister of Finance in the cabinet expansion held on 8 September 2019.He was also appointed minister for Health, Medical and Family welfare, on 9 November 2021.Harish Rao started his political journey with Bharat Rashtra Samithi as youth leader. He was elected to assembly at the age of 32 from Siddipet. He raised his strong voice in assembly on various issues of Telangana region. Soon, he became key member of Bharat Rashtra Samithi and started working as Internal party strategist. He along with other MLA resigned as Congress party delayed the announcement of bifurcation of Telangana. He won as MLA with majority over 58000 though it was major setback for party winning only 7 MLA seats and 2 MP seats out of 17 MLA and 4 MP contested. In 2009, he was once again elected as MLA from Siddipet constituency with over 60000 majority. He was elected as BRS party legislative member. Soon after, he and 10 other members from the TRS resigned from the Legislative Assembly in support of a separate State for Telangana. In July 2010, the High Court of Andhra Pradesh ordered the Election Commission of India to conduct by-polls in Siddipet and other towns across the Telangana region. Harish Rao contested again from Siddipet defeating opponent Babu Mohan (from the Telugu Desam Party) yet again.Harish Rao was elected as MLA for the sixth consecutive time from Siddipet constituency with a whopping majority of 1,20,650 votes in 2018 Elections.',
        'imagePath' : 'assets/images/harishrao.png'
      }
    }
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
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        backgroundColor: Colors.yellow[500],
        title:  Text(_leaderText, style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.red[900],
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
                  child: Image.asset('assets/Leaders/cbnleader.jpg')),
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
                        color: Colors.red[900],
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
                    color: Colors.red[900],
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
