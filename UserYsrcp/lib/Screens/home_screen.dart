import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

//Drawer News
final Uri _urlourphilosophy = Uri.parse('https://www.ysrcongress.com/news-all');//latest news
final Uri _urljaihind = Uri.parse('https://www.ysrcongress.com/navarathnalu');//Navaratnalu
final Uri _urltdphistory = Uri.parse('https://www.ysrcongress.com/special-stories');//pratyeka kadhanalu
final Uri _urlinfluence = Uri.parse('https://www.ysrcongress.com/donka-tirugudu');//Donka therugudu.
final Uri _urladministrative = Uri.parse('https://www.telugudesam.org/party-organization-structure/');

//Drawer Our Leadership
final Uri _urlFoundersBio = Uri.parse('https://www.ysrcongress.com/leaders');// the leaders
final Uri _urlBioLeaders = Uri.parse('https://www.ysrcongress.com/leaders/general-secretary');//general secretary
final Uri _urlNtr = Uri.parse('https://www.ysrcongress.com/leaders/mla');//mla
final Uri _urlMlc = Uri.parse('https://www.ysrcongress.com/leaders/mlc');//mla
final Uri _urlLoksabha = Uri.parse('https://www.ysrcongress.com/leaders/mp');//mla
final Uri _urlRajyasabha = Uri.parse('https://www.ysrcongress.com/leaders/rajyasabha');//mla
final Uri _urlDistrict = Uri.parse('https://www.ysrcongress.com/leaders/district-presidents');//mla
final Uri _urlRegional = Uri.parse('https://www.ysrcongress.com/leaders/regional-coordinators');//mla

//Drawer Our success
final Uri _urlIndia = Uri.parse('https://www.telugudesam.org/role-in-building-the-nation/');
final Uri _urlAndraPradesh = Uri.parse('https://www.telugudesam.org/role-in-building-the-nation-andhra-pradesh/');
final Uri _urlTelangana = Uri.parse('https://www.telugudesam.org/role-in-building-the-nation-telangana/');
final Uri _urlOurSuccess = Uri.parse('https://www.telugudesam.org/40-years-of-success/');

// Drawer Downloads
final Uri _urlManifesto = Uri.parse('https://www.ysrcongress.com/campaign-songs');
final Uri _urlMahanadu = Uri.parse('https://www.ysrcongress.com/downloads/hd-photos');
final Uri _urlMyPic = Uri.parse('https://www.ysrcongress.com/download/audio');
final Uri _urlLogos = Uri.parse('https://www.ysrcongress.com/download/flags');
final Uri _urlPicofLeaders = Uri.parse('https://www.ysrcongress.com/download/books');
final Uri _urlBanner = Uri.parse('https://www.ysrcongress.com/download/banners');

//drawer Promotional Information
final Uri _urlBanners = Uri.parse('https://www.telugudesam.org/party-banners-and-booklets/');
final Uri _urlPosters = Uri.parse('https://www.telugudesam.org/posters-and-brochures/');
final Uri _urlCampaign = Uri.parse('https://www.telugudesam.org/songs/');
final Uri _urlElectioninfo = Uri.parse('https://www.telugudesam.org/election-information-and-suggestions/');

// drawer Media Resources
final Uri _urlPress = Uri.parse('https://www.ysrcongress.com/media-release');
final Uri _urlSpeeches = Uri.parse('https://www.ysrcongress.com/live-tv');
final Uri _urlPrograms = Uri.parse('https://www.ysrcongress.com/saadhakam');
final Uri _urlInterviews = Uri.parse('https://www.ysrcongress.com/saadhakam');
final Uri _urlPhoto = Uri.parse('https://www.ysrcongress.com/photos');
final Uri _urlVideo = Uri.parse('https://www.ysrcongress.com/videos');


final Uri _urlabouttheparty = Uri.parse('https://www.ysrcongress.com/en/about-party');
final Uri _urljalayagnam = Uri.parse('https://www.ysrcongress.com/video/navarathnalu');
final Uri _urlarogyasri = Uri.parse('https://www.ysrcongress.com/video/navarathnalu');
final Uri _urlmadhyapana = Uri.parse('https://www.ysrcongress.com/video/navarathnalu');
final Uri _urlraithubharosa = Uri.parse('https://www.ysrcongress.com/video/navarathnalu');




class HomePageMain extends StatelessWidget {
  const HomePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Language Selection App',
      localizationsDelegates:  [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English
        Locale('te', 'TE'), // Telugu
      ],
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List imageList = [
    {"id": 0, "image_path": 'assets/party_images/drawer_ysrcp.jpeg'},
    {"id": 1, "image_path": 'assets/sliding_images/slide1.jpeg'},
    {"id": 2, "image_path": 'assets/sliding_images/slide2.jpeg'},
    {"id": 3, "image_path": 'assets/sliding_images/slide3.jpeg'},
    {"id": 4, "image_path": 'assets/sliding_images/slide4.jpeg'},
    {"id": 5, "image_path": 'assets/sliding_images/manifesto1.jpg'},
    {"id": 6, "image_path": 'assets/sliding_images/manifesto2.jpg'},
    {"id": 7, "image_path": 'assets/sliding_images/manifesto3.jpg'},
    {"id": 8, "image_path": 'assets/sliding_images/manifesto4.jpg'},
    {"id": 9, "image_path": 'assets/sliding_images/manifesto5.jpg'},
    {"id": 10, "image_path": 'assets/sliding_images/manifesto6.jpg'},
    {"id": 11, "image_path": 'assets/sliding_images/manifesto7.jpg'},
    {"id": 12, "image_path": 'assets/sliding_images/manifesto8.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;


  int _currentIndex = 0; // Track the current selected index
  Locale _selectedLocale = const Locale('en', 'US'); // Default language
  String _greetingText = 'Hello, World!'; // Default greeting text
  String _appTitle = 'Yuvajana Shramika Rythu Congress Party'; // Default app title
  String _drawerText='News';//Default Drawer option 1

  String _drawerourphilosophyText='Latest News';//Default Drawer option 1.1
  String _drawerjaihindText='Navratnas';//Default Drawer option 1.2
  String _drawerourhistoryText='Special Articles';//Default Drawer option 1.3
  String _drawerjathiyaText='Detour';//Default Drawer option 1.4
  String _draweradminText='Administrative category';//Default Drawer option 1.4

  String _drawerleadershipText='Our Leadership';//Default Drawer option 2.1
  String _drawerfounderText='The Leaders';//Default Drawer option 2.2
  String _drawerbiographyText='Chief Secretaries';//Default Drawer option 2.3
  String _drawerntrText='MLA';//Default Drawer option 2.4
  String _drawermlcText='MLc';//Default Drawer option 2.4
  String _drawerloksadbaText='Lok Sabha MPs';//Default Drawer option 2.4
  String _drawerrajyasabhaText='Rajya Sabha MPs';//Default Drawer option 2.4
  String _drawerdistrictText='District Presidents';//Default Drawer option 2.4
  String _drawercoordinatorText='Regional Coordinator';//Default Drawer option 2.4

  String _drawersuccessText='Our Success';//Default Drawer option 3.1
  String _drawerindiaText='India';//Default Drawer option 3.2
  String _drawerandraText='Andra Pradesh';//Default Drawer option 3.3
  String _drawertelanganaText='Telangana';//Default Drawer option 3.4
  String _drawerfourtyText='Our Success';//Default Drawer option 3.5

  String _drawerdownloadText='Downloads';//Default Drawer option 4.1
  String _drawermanifestoText='Campaingn Songs';//Default Drawer option 4.2
  String _drawermahanaduText='Photos';//Default Drawer option 4.3
  String _drawerpictureText='Audios';//Default Drawer option 4.4
  String _drawerlogosText='Flags';//Default Drawer option 4.5
  String _drawerpicofledText='Books';//Default Drawer option 4.6
  String _drawerbannersText='Banners';//Default Drawer option 4.7

  String _drawerpromoText='Promotional information';//Default Drawer option 5.1
  String _drawerBabbersText='Banners / Booklets';//Default Drawer option 5.2
  String _drawerpostersText='Posters / Pamphlets';//Default Drawer option 5.3
  String _drawercampaignText='Campaign songs';//Default Drawer option 5.4
  String _drawerelectioninfoText='Election Information / Instructions';//Default Drawer option 5.5

  String _drawerMediaresourcesText='Media resources';//Default Drawer option 6.1
  String _drawerPressReleasesText='Press Releases';//Default Drawer option 6.2
  String _drawerSpeechesText='Live TV';//Default Drawer option 6.3
  String _drawerprogramsText='programs';//Default Drawer option 6.4
  String _drawerInterviewText='Interviews & Articles';//Default Drawer option 6.5
  String _drawerphotoText='Photo gallery';//Default Drawer option 6.6
  String _drawerVideoText='Video gallery';//Default Drawer option 6.7

  // History Of The Party
  String _historyThePartyText='History Of The Party';//Default History Of The Party
  String _historyThePartyFullText='YSR Congress Party or Yuvajana, Shramika, Rythu Congress Party (lit. Youth, Labour and Farmer Congress Party) is a regional political party in the states of Andhra Pradesh and Telangana in India.\n\n        It was founded by Siva Kumar, a fan of YSR, in 2009 and taken over by Y. S. Jagan, the son of former Andhra Pradesh chief minister Y. S. Rajasekhara Reddy (popularly known as YSR) in 2011. Both YSR and YS Jagan had been members of the Indian National Congress. YS Jagan was also elected as the national president of the party.';//Default History Of The Party

  //About The Party
  String _aboutThePartyText='About The Party';//Default About The Party
  String _aboutThePartyFullText='After the unexpected death of YS Rajasekhara Reddy, then the Chief Minister of Andhra Pradesh in a helicopter crash in September 2009, his son YS Jagan, the incumbent MP from Kadapa, started an Odarpu Yatra (condolence tour) across Andhra Pradesh, supposedly to console the families of those who had committed suicide or died of shock after the death of his father.\n\n       This was however not supported by the Congress leadership. Congress President Sonia Gandhi claimed the rising volatile situation in the state regarding the Telangana issue as the main reason for opposing the Odarpu Yatra. Defying the Congress High Commands order to call off the tour, YS Jagan went ahead with the first leg of the Odarpu Yatra in the West Godavari and Khammam districts from in April 2010.';//Default About The Party
  // Jai Hind
  String _historyJaiHindText='YSR Jalayagnam';//Default About The Party
  String _historyJaiHindFullText='     Jalayagnam dream projects of late Dr YSR to be completed.\n       Polavaram, Poolasubbayya, Veligonda and other projects to be completed in war footing basis.\n    Safe water for drinking and water for cultivation to be provided. Ponds to be modernized to improve water tables.';//Default About The Party
  //
  String _partyInfluenceText='Arogyasri';
  String _partyInfluenceFullText = 'YSR Aarogyasri cover for all categories with annual income less than Rs. 5 lakh.\nAarogyasri applicable for all medical expenses above Rs. 1000/-.\nFree medical treatment through Aarogyasri.\nAarogyasri treatment applicable through out country.\nAll diseases and operations to be covered under Aarogyasri.\nFinancial assistance to the family of person during rest after operation or medical treatment.';

  String _partyMadyapanaText='Ban On Alcohol';
  String _partyMadyapanaFullText='Liquor is one of the main reason for dispute in families.\nHuman relations are collapsing.\nBan on Alcohol will be implemented in three stages. Alcohol use to be limited to 5 star hotels.';

  String _partyRaithuText='YSR Raithu Bharosa';
  String _partyRaithuFullText='Every farmer to be provided Rs 50000 financial assistance. For crop sowing farmers to get Rs 12500 during May itself.\nFarmers need not worry about crop insurance. Government to pay crop insurance premium on behalf of farmers.\nInterest free Crop loans to be provided to farmers.';


  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updateGreetingText();
      _updateAppTitle();
      _updateDrawerHomeText();
      _updateDrawerOurpartyText();
      _updateDrawerHomeOurPhilosophyText();
      _updateDrawerHomeJaiHindText();
      _updateDrawerOurHistoryText();
      _updateDrawerJathiyaText();
      _updateDrawerAdminText();

      _updateDrawerOurLeardershipText();
      _updateDrawerFounderText();
      _updateDrawerBiographyText();
      _updateDrawerntrText();
      _updateDrawermlcText();
      _updateDrawerloksadbaText();
      _updateDrawerrajyasabhaText();
      _updateDrawerdistrictText();
      _updateDrawercoordinatorText();

      _updateDrawerSuccessText();
      _updateDrawerIndiaText();
      _updateDrawerAndraText();
      _updateDrawerTelanganaText();
      _updateDrawerFourtyText();

      _updateDrawerDownloadsText();
      _updateDrawerManifestoText();
      _updateDrawerMahanaduText();
      _updateDrawerPictureText();
      _updateDrawerLogosText();
      _updateDrawerPicturesofleadersText();
      _updateDrawerBannerText();

      _updateDrawerPromoText();
      _updateDrawerBannersText();
      _updateDrawerPostersText();
      _updateDrawerCampaignText();
      _updateDrawerElectionInfoText();

      _updateDrawerMediaresourcesText();
      _updateDrawerPressReleasesText();
      _updateDrawerSpeechesText();
      _updateDrawerprogramsText();
      _updateDrawerInterviewText();
      _updateDrawerPhotoText();
      _updateDrawerVideoText();

      _updateHistorythepartyText();
      _updateHistorythepartyFullText();

      _updateAboutthepartyText();
      _updateAboutthepartyFullText();

      _updateJaiHindText();
      _updateJaiHindFullText();

      _updatePartyInfluenceText();
      _updatePartyInfluenceFullText();

      _updatePartyMadyapanaText();
      _updatePartyMadyapanaFullText();

      _updatePartyRaithuText();
      _updatePartyRaithuFullText();
    });
  }

  void _updateGreetingText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _greetingText = 'Hello, World!';
        break;
      case 'te':
        _greetingText = 'శుభోదయం';
        break;
      default:
        _greetingText = 'Hello, World!';
    }
  }

  void _updateDrawerOurpartyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerText = 'Our Party';
        break;
      case 'te':
        _drawerText = 'మా పార్టీ';
        break;
      default:
        _drawerText = 'Our Party';
    }
  }

  void _updateDrawerHomeOurPhilosophyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerourphilosophyText = 'Latest News';
        break;
      case 'te':
        _drawerourphilosophyText = 'తాజా వార్తలు';
        break;
      default:
        _drawerourphilosophyText = 'Latest News';
    }
  }

  void _updateDrawerHomeJaiHindText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerjaihindText = 'Navratnas';
        break;
      case 'te':
        _drawerjaihindText = 'నవరత్నాలు';
        break;
      default:
        _drawerjaihindText = 'Navratnas';
    }
  }

  void _updateDrawerOurHistoryText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerourhistoryText = 'Special Articles';
        break;
      case 'te':
        _drawerourhistoryText = 'ప్రత్యేక కథనాలు';
        break;
      default:
        _drawerourhistoryText = 'Special Articles';
    }
  }

  void _updateDrawerJathiyaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerjathiyaText = 'Detour';
        break;
      case 'te':
        _drawerjathiyaText = 'డొంక తిరుగుడు';
        break;
      default:
        _drawerjathiyaText = 'Detour';
    }
  }

  void _updateDrawerAdminText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _draweradminText = 'Administrative category';
        break;
      case 'te':
        _draweradminText = 'కార్య నిర్వాహక వర్గం';
        break;
      default:
        _draweradminText = 'Administrative category';
    }
  }

  //Drawer Our leadership

  void _updateDrawerOurLeardershipText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerleadershipText = 'Our leadership';
        break;
      case 'te':
        _drawerleadershipText = 'మన నాయకత్వం';
        break;
      default:
        _drawerleadershipText = 'Our leadership';
    }
  }

  void _updateDrawerFounderText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerfounderText = 'The Leaders';
        break;
      case 'te':
        _drawerfounderText = 'నాయకులూ';
        break;
      default:
        _drawerfounderText = 'The Leaders';
    }
  }

  void _updateDrawerBiographyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerbiographyText = 'Chief Secretaries';
        break;
      case 'te':
        _drawerbiographyText = 'ప్రధాన కార్యదర్శులు';
        break;
      default:
        _drawerbiographyText = 'Chief Secretaries';
    }
  }

  void _updateDrawerntrText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerntrText = 'MLA';
        break;
      case 'te':
        _drawerntrText = 'ఎమ్మెల్యే';
        break;
      default:
        _drawerntrText = 'MLA';
    }
  }

  void _updateDrawermlcText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawermlcText = 'MLC';
        break;
      case 'te':
        _drawermlcText = 'ఎమ్మెల్సీ';
        break;
      default:
        _drawermlcText = 'MLC';
    }
  }

  void _updateDrawerloksadbaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerloksadbaText = 'Lok Sabha MP';
        break;
      case 'te':
        _drawerloksadbaText = 'లోక్ సభ ఎంపీ';
        break;
      default:
        _drawerloksadbaText = 'Lok Sabha MP';
    }
  }

  void _updateDrawerrajyasabhaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerrajyasabhaText = 'Rajya Sabha MP';
        break;
      case 'te':
        _drawerrajyasabhaText = 'రాజ్య సభ ఎంపీ';
        break;
      default:
        _drawerrajyasabhaText = 'Rajya Sabha MP';
    }
  }

  void _updateDrawerdistrictText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerdistrictText = 'District Presidents';
        break;
      case 'te':
        _drawerdistrictText = 'జిల్లా అధ్యక్షులు';
        break;
      default:
        _drawerdistrictText = 'District Presidents';
    }
  }

  void _updateDrawercoordinatorText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawercoordinatorText = 'Regional Coordinator';
        break;
      case 'te':
        _drawercoordinatorText = 'రీజినల్ కో ఆర్డినేటర్';
        break;
      default:
        _drawercoordinatorText = 'Regional Coordinator';
    }
  }



  //Drawer Our successes
  void _updateDrawerSuccessText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawersuccessText = 'Our Successes';
        break;
      case 'te':
        _drawersuccessText = 'మన విజయాలు';
        break;
      default:
        _drawersuccessText = 'Our Successes';
    }
  }

  void _updateDrawerIndiaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerindiaText = 'India';
        break;
      case 'te':
        _drawerindiaText = 'భారత దేశం';
        break;
      default:
        _drawerindiaText = 'India';
    }
  }

  void _updateDrawerAndraText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerandraText = 'Andhra Pradesh';
        break;
      case 'te':
        _drawerandraText = 'ఆంధ్ర ప్రదేశ్';
        break;
      default:
        _drawerandraText = 'Andhra Pradesh';
    }
  }

  void _updateDrawerTelanganaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawertelanganaText = 'Telangana';
        break;
      case 'te':
        _drawertelanganaText = 'తెలంగాణ';
        break;
      default:
        _drawertelanganaText = 'Telangana';
    }
  }

  void _updateDrawerFourtyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerfourtyText = '40 years of achievements';
        break;
      case 'te':
        _drawerfourtyText = '40 సంవత్సరాల విజయాలు';
        break;
      default:
        _drawerfourtyText = '40 years of achievements';
    }
  }

  //Drawer Downloads
  void _updateDrawerDownloadsText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerdownloadText = 'Downloads';
        break;
      case 'te':
        _drawerdownloadText = 'డౌన్లోడ్స్';
        break;
      default:
        _drawerdownloadText = 'Downloads';
    }
  }

  void _updateDrawerManifestoText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawermanifestoText = 'Campaign Songs';
        break;
      case 'te':
        _drawermanifestoText = 'ప్రచార గీతాలు';
        break;
      default:
        _drawermanifestoText = 'Campaign Songs';
    }
  }

  void _updateDrawerMahanaduText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawermahanaduText = 'Photos';
        break;
      case 'te':
        _drawermahanaduText = 'ఫొటోస్';
        break;
      default:
        _drawermahanaduText = 'Photos';
    }
  }

  void _updateDrawerPictureText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerpictureText = 'Audio';
        break;
      case 'te':
        _drawerpictureText = 'ఆడియో';
        break;
      default:
        _drawerpictureText = 'Audio';
    }
  }

  void _updateDrawerPicturesofleadersText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerpicofledText = 'Books';
        break;
      case 'te':
        _drawerpicofledText = 'పుస్తకాలు';
        break;
      default:
        _drawerpicofledText = 'Books';
    }
  }

  void _updateDrawerLogosText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerlogosText = 'Flags';
        break;
      case 'te':
        _drawerlogosText = 'ఫ్లాగ్స్';
        break;
      default:
        _drawerlogosText = 'Flags';
    }
  }

  void _updateDrawerBannerText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerbannersText = 'Banners';
        break;
      case 'te':
        _drawerbannersText = 'బన్నెర్స్';
        break;
      default:
        _drawerbannersText = 'Banners';
    }
  }

  //Drawer Promotional information
  void _updateDrawerPromoText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerpromoText = 'Promotional information';
        break;
      case 'te':
        _drawerpromoText = 'ప్రచార సమాచారం';
        break;
      default:
        _drawerpromoText = 'Promotional information';
    }
  }

  void _updateDrawerBannersText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerBabbersText = 'Banners / Booklets';
        break;
      case 'te':
        _drawerBabbersText = 'బ్యానర్స్ / బుక్ లెట్స్';
        break;
      default:
        _drawerBabbersText = 'Banners / Booklets';
    }
  }

  void _updateDrawerPostersText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerpostersText = 'Posters / Pamphlets';
        break;
      case 'te':
        _drawerpostersText = 'పోస్టర్స్ / కరపత్రాలు';
        break;
      default:
        _drawerpostersText = 'Posters / Pamphlets';
    }
  }

  void _updateDrawerCampaignText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawercampaignText = 'Campaign songs';
        break;
      case 'te':
        _drawercampaignText = 'ప్రచార గీతాలు';
        break;
      default:
        _drawercampaignText = 'Campaign songs';
    }
  }

  void _updateDrawerElectionInfoText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerelectioninfoText = 'Election Information / Instructions';
        break;
      case 'te':
        _drawerelectioninfoText = 'ఎన్నికల సమాచారం / సూచనలు';
        break;
      default:
        _drawerelectioninfoText = 'Election Information / Instructions';
    }
  }

  //Drawer Media Resources
  void _updateDrawerMediaresourcesText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerMediaresourcesText = 'Media resources';
        break;
      case 'te':
        _drawerMediaresourcesText = 'మీడియా వనరులు';
        break;
      default:
        _drawerMediaresourcesText = 'Media resources';
    }
  }

  void _updateDrawerPressReleasesText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerPressReleasesText = 'Press Releases';
        break;
      case 'te':
        _drawerPressReleasesText = 'పత్రికా ప్రకటనలు';
        break;
      default:
        _drawerPressReleasesText = 'Press Releases';
    }
  }

  void _updateDrawerSpeechesText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerSpeechesText = 'Live TV';
        break;
      case 'te':
        _drawerSpeechesText = 'ప్రత్యక్ష TV';
        break;
      default:
        _drawerSpeechesText = 'Live TV';
    }
  }

  void _updateDrawerprogramsText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerprogramsText = 'Programs';
        break;
      case 'te':
        _drawerprogramsText = 'కార్యక్రమాలు';
        break;
      default:
        _drawerprogramsText = 'Programs';
    }
  }

  void _updateDrawerInterviewText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerInterviewText = 'Interviews & Articles';
        break;
      case 'te':
        _drawerInterviewText = 'ముఖాముఖి & కథనాలు';
        break;
      default:
        _drawerInterviewText = 'Interviews & Articles';
    }
  }

  void _updateDrawerPhotoText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerphotoText = 'Photo gallery';
        break;
      case 'te':
        _drawerphotoText = 'ఫోటో గ్యాలరీ';
        break;
      default:
        _drawerphotoText = 'Photo gallery';
    }
  }

  void _updateDrawerVideoText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerVideoText = 'Video gallery';
        break;
      case 'te':
        _drawerVideoText = 'వీడియో గ్యాలరీ';
        break;
      default:
        _drawerVideoText = 'Video gallery';
    }
  }


  void _updateDrawerHomeText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerText = 'News';
        break;
      case 'te':
        _drawerText = 'వార్తలు';
        break;
      default:
        _drawerText = 'News';
    }
  }

  void _updateAppTitle() {
    setState(() {
      switch (_selectedLocale.languageCode) {
        case 'en':
          _appTitle = 'Yuvajana Shramika Rythu Congress Party';
          break;
        case 'te':
          _appTitle = 'యువజన శ్రామిక రైతు కాంగ్రెస్ పార్టీ';
          break;
        default:
          _appTitle = 'Yuvajana Shramika Rythu Congress Party';
      }
    }
    );
  }

  // About Of the Party
  void _updateAboutthepartyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _aboutThePartyText = 'About The Party';
        break;
      case 'te':
        _aboutThePartyText = 'పార్టీ గురించి';
        break;
      default:
        _aboutThePartyText = 'About The Party';
    }
  }

  void _updateAboutthepartyFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _aboutThePartyFullText = 'After the unexpected death of YS Rajasekhara Reddy, then the Chief Minister of Andhra Pradesh in a helicopter crash in September 2009, his son YS Jagan, the incumbent MP from Kadapa, started an Odarpu Yatra (condolence tour) across Andhra Pradesh, supposedly to console the families of those who had committed suicide or died of shock after the death of his father.\n\n       This was however not supported by the Congress leadership. Congress President Sonia Gandhi claimed the rising volatile situation in the state regarding the Telangana issue as the main reason for opposing the Odarpu Yatra. Defying the Congress High Commands order to call off the tour, YS Jagan went ahead with the first leg of the Odarpu Yatra in the West Godavari and Khammam districts from in April 2010.';
        break;
      case 'te':
        _aboutThePartyFullText = '2009 సెప్టెంబరులో అప్పటి ఆంధ్రప్రదేశ్ ముఖ్యమంత్రి వైఎస్ రాజశేఖరరెడ్డి హెలికాప్టర్ ప్రమాదంలో అనూహ్యంగా మరణించిన తరువాత, కడప నుండి ప్రస్తుత ఎంపీ వైఎస్ జగన్ ఓదార్పు కోసం ఆంధ్రప్రదేశ్ అంతటా ఓదార్పు యాత్ర ( సంతాప యాత్ర) ప్రారంభించారు. తన తండ్రి మరణం తర్వాత షాక్‌తో ఆత్మహత్య చేసుకున్న లేదా మరణించిన వారి కుటుంబాలు.\n\n       అయితే దీనిని కాంగ్రెస్ అధిష్టానం సమర్థించలేదు. తెలంగాణ అంశంపై రాష్ట్రంలో నెలకొన్న అస్థిర పరిస్థితులే ఓదార్పు యాత్రను వ్యతిరేకించడానికి ప్రధాన కారణమని కాంగ్రెస్ అధ్యక్షురాలు సోనియా గాంధీ పేర్కొన్నారు. పర్యటనను విరమించుకోవాలని కాంగ్రెస్ హైకమాండ్ ఆదేశాన్ని ధిక్కరిస్తూ, వైఎస్ జగన్ ఏప్రిల్ 2010 నుండి పశ్చిమగోదావరి మరియు ఖమ్మం జిల్లాలలో ఓదార్పు యాత్ర మొదటి విడతగా ముందుకు సాగారు.';
        break;
      default:
        _aboutThePartyFullText = 'After the unexpected death of YS Rajasekhara Reddy, then the Chief Minister of Andhra Pradesh in a helicopter crash in September 2009, his son YS Jagan, the incumbent MP from Kadapa, started an Odarpu Yatra (condolence tour) across Andhra Pradesh, supposedly to console the families of those who had committed suicide or died of shock after the death of his father.\n\n       This was however not supported by the Congress leadership. Congress President Sonia Gandhi claimed the rising volatile situation in the state regarding the Telangana issue as the main reason for opposing the Odarpu Yatra. Defying the Congress High Commands order to call off the tour, YS Jagan went ahead with the first leg of the Odarpu Yatra in the West Godavari and Khammam districts from in April 2010.';
    }
  }


  // History Of The Party
  void _updateHistorythepartyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _historyThePartyText = 'History The Party';
        break;
      case 'te':
        _historyThePartyText = 'పార్టీ చరిత్ర';
        break;
      default:
        _historyThePartyText = 'History The Party';
    }
  }

  void _updateHistorythepartyFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _historyThePartyFullText = 'YSR Congress Party or Yuvajana, Shramika, Rythu Congress Party (lit. Youth, Labour and Farmer Congress Party) is a regional political party in the states of Andhra Pradesh and Telangana in India.\n\n       It was founded by Siva Kumar, a fan of YSR, in 2009 and taken over by Y. S. Jagan, the son of former Andhra Pradesh chief minister Y. S. Rajasekhara Reddy (popularly known as YSR) in 2011. Both YSR and YS Jagan had been members of the Indian National Congress. YS Jagan was also elected as the national president of the party.';
        break;
      case 'te':
        _historyThePartyFullText = 'YSR కాంగ్రెస్ పార్టీ లేదా యువజన, శ్రామిక, రైతు కాంగ్రెస్ పార్టీ (లిట్. యూత్, లేబర్ మరియు రైతు కాంగ్రెస్ పార్టీ) భారతదేశంలోని ఆంధ్ర ప్రదేశ్ మరియు తెలంగాణా రాష్ట్రాలలో ఒక ప్రాంతీయ రాజకీయ పార్టీ.\n\n        దీనిని 2009లో YSR అభిమాని అయిన శివ కుమార్ స్థాపించారు మరియు 2011లో మాజీ ఆంధ్ర ప్రదేశ్ ముఖ్యమంత్రి Y. S. రాజశేఖర రెడ్డి (YSR గా ప్రసిద్ధి చెందిన) కుమారుడు Y. S. జగన్ స్వాధీనం చేసుకున్నారు. YSR మరియు YS జగన్ ఇద్దరూ సభ్యులుగా ఉన్నారు. భారత జాతీయ కాంగ్రెస్. పార్టీ జాతీయ అధ్యక్షుడిగా కూడా వైఎస్ జగన్ ఎన్నికయ్యారు.';
        break;
      default:
        _historyThePartyFullText = 'YSR Congress Party or Yuvajana, Shramika, Rythu Congress Party (lit. Youth, Labour and Farmer Congress Party) is a regional political party in the states of Andhra Pradesh and Telangana in India.\n\n        It was founded by Siva Kumar, a fan of YSR, in 2009 and taken over by Y. S. Jagan, the son of former Andhra Pradesh chief minister Y. S. Rajasekhara Reddy (popularly known as YSR) in 2011. Both YSR and YS Jagan had been members of the Indian National Congress. YS Jagan was also elected as the national president of the party.';
    }
  }

  // Jai Hind
  void _updateJaiHindText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _historyJaiHindText = 'YSR Jalayagnam';
        break;
      case 'te':
        _historyJaiHindText = 'వైఎస్ఆర్ జలయజ్ఞం';
        break;
      default:
        _historyJaiHindText = 'YSR Jalayagnam';
    }
  }

  void _updateJaiHindFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _historyJaiHindFullText = '     Jalayagnam dream projects of late Dr YSR to be completed.\n       Polavaram, Poolasubbayya, Veligonda and other projects to be completed in war footing basis.\n    Safe water for drinking and water for cultivation to be provided. Ponds to be modernized to improve water tables.';
        break;
      case 'te':
        _historyJaiHindFullText = 'దివంగత డాక్టర్‌ వైఎస్‌ఆర్‌ కలల ప్రాజెక్టులైన జలయజ్ఞం పూర్తి చేయాలన్నారు.\n    పోలవరం, పూలసుబ్బయ్య, వెలిగొండ తదితర ప్రాజెక్టులను యుద్ధ ప్రాతిపదికన పూర్తి చేయాలన్నారు.\n    సురక్షిత తాగునీరు, సాగు నీరు అందించాలన్నారు. నీటి నిల్వలను మెరుగుపరచడానికి చెరువులను ఆధునీకరించాలి.';
        break;
      default:
        _historyJaiHindFullText = '     Jalayagnam dream projects of late Dr YSR to be completed.\n       Polavaram, Poolasubbayya, Veligonda and other projects to be completed in war footing basis.\n    Safe water for drinking and water for cultivation to be provided. Ponds to be modernized to improve water tables.';
    }
  }

  // Party Influence
  void _updatePartyInfluenceText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyInfluenceText = 'Arogyasri';
        break;
      case 'te':
        _partyInfluenceText = 'ఆరోగ్యశ్రీ';
        break;
      default:
        _partyInfluenceText = 'Arogyasri';
    }
  }

  void _updatePartyInfluenceFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyInfluenceFullText = 'YSR Aarogyasri cover for all categories with annual income less than Rs. 5 lakh.\nAarogyasri applicable for all medical expenses above Rs. 1000/-.\nFree medical treatment through Aarogyasri.\nAarogyasri treatment applicable through out country.\nAll diseases and operations to be covered under Aarogyasri.\nFinancial assistance to the family of person during rest after operation or medical treatment.';
        break;
      case 'te':
        _partyInfluenceFullText = 'రూ. కంటే తక్కువ వార్షిక ఆదాయం ఉన్న అన్ని వర్గాలకు వైఎస్ఆర్ ఆరోగ్యశ్రీ కవర్. 5 లక్షలు.\nరూ. కంటే ఎక్కువ అన్ని వైద్య ఖర్చులకు ఆరోగ్యశ్రీ వర్తిస్తుంది. 1000/-.\nఆరోగ్యశ్రీ ద్వారా ఉచిత వైద్యం.\nఆరోగ్యశ్రీ చికిత్స విదేశాలకు వర్తిస్తుంది.\nఅన్ని వ్యాధులు మరియు ఆపరేషన్లు ఆరోగ్యశ్రీ కింద కవర్ చేయబడతాయి.\nఆపరేషన్ లేదా వైద్య చికిత్స తర్వాత విశ్రాంతి సమయంలో వ్యక్తి కుటుంబానికి ఆర్థిక సహాయం.';
        break;
      default:
        _partyInfluenceFullText = 'YSR Aarogyasri cover for all categories with annual income less than Rs. 5 lakh.\nAarogyasri applicable for all medical expenses above Rs. 1000/-.\nFree medical treatment through Aarogyasri.\nAarogyasri treatment applicable through out country.\nAll diseases and operations to be covered under Aarogyasri.\nFinancial assistance to the family of person during rest after operation or medical treatment.';
    }
  }

//Madyapana section.
  void _updatePartyMadyapanaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyMadyapanaText = 'Ban on Alcohol';
        break;
      case 'te':
        _partyMadyapanaText = 'మద్యంపై నిషేధం';
        break;
      default:
        _partyMadyapanaText = 'Ban on Alcohol';
    }
  }

  void _updatePartyMadyapanaFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyMadyapanaFullText = 'Liquor is one of the main reason for dispute in families.\nHuman relations are collapsing.\nBan on Alcohol will be implemented in three stages. Alcohol use to be limited to 5 star hotels.';
        break;
      case 'te':
        _partyMadyapanaFullText = 'కుటుంబాల్లో వివాదాలకు ప్రధాన కారణం మద్యం.\nమానవ సంబంధాలు కుప్పకూలుతున్నాయి.\nమద్యపాన నిషేధాన్ని మూడు దశల్లో అమలు చేయనున్నారు. మద్యం వినియోగం 5 స్టార్ హోటళ్లకే పరిమితం.';
        break;
      default:
        _partyMadyapanaFullText = 'Liquor is one of the main reason for dispute in families.\nHuman relations are collapsing.\nBan on Alcohol will be implemented in three stages. Alcohol use to be limited to 5 star hotels.';
    }
  }
//raithu
  void _updatePartyRaithuText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyRaithuText = 'YSR Raithu Bharosa';
        break;
      case 'te':
        _partyRaithuText = 'వైఎస్ఆర్ రైతు భరోసా';
        break;
      default:
        _partyRaithuText = 'YSR Raithu Bharosa';
    }
  }

  void _updatePartyRaithuFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyRaithuFullText = 'Every farmer to be provided Rs 50000 financial assistance. For crop sowing farmers to get Rs 12500 during May itself.\nFarmers need not worry about crop insurance. Government to pay crop insurance premium on behalf of farmers.\nInterest free Crop loans to be provided to farmers.';
        break;
      case 'te':
        _partyRaithuFullText = 'ప్రతి రైతుకు రూ.50000 ఆర్థిక సాయం అందించాలి. పంటలు నాటే రైతులకు మే నెలలోనే రూ.12500.\nపంటల బీమాపై రైతులు ఆందోళన చెందాల్సిన అవసరం లేదు. రైతుల తరపున పంటల బీమా ప్రీమియం ప్రభుత్వం చెల్లించాలి.\nరైతులకు వడ్డీలేని పంట రుణాలు అందించాలి.';
        break;
      default:
        _partyRaithuFullText = 'Every farmer to be provided Rs 50000 financial assistance. For crop sowing farmers to get Rs 12500 during May itself.\nFarmers need not worry about crop insurance. Government to pay crop insurance premium on behalf of farmers.\nInterest free Crop loans to be provided to farmers.';
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "route",
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Row(
            children: [
              SizedBox(width: 8),
              Text(
                _appTitle,
                style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900,),
              ),
              const SizedBox(width: 25),
              Image.asset(
                'assets/party_images/party_logo_fan.png', // Replace with the actual path or asset reference
                height: 60,
                width: 60,
              ),
            ],
          ),
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
        drawer: Drawer(
          backgroundColor: Colors.blue[500],
          child: ListView(
            //padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                ),
                child: Container(
                  child: Center(
                    child: Stack(
                      children: [
                        // Background image
                        Image.asset(
                          'assets/party_images/drawer_ysrcp.jpeg', // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                        // Text overlay
                        // Center(
                        //   child: Text(
                        //     'Drawer Header',
                        //     style: TextStyle(
                        //       color: Colors.white,
                        //       fontSize: 24,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
      
               //Drawer Home
               SingleChildScrollView(
                child: ExpansionTile(
                  title: Text(_drawerText,),//Home
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: Text(_drawerourphilosophyText),//Our Philosophy
                      onTap: _launchUrlourphilosophy,
                    ),
      
                    ListTile(
                      title: Text(_drawerjaihindText),//Jai Hind
                      onTap: _launchUrljaihind,
                    ),
      
                    ListTile(
                      title: Text(_drawerourhistoryText),//Our History
                      onTap: _launchUrlOurHistory,
                    ),
      
                    ListTile(
                      title: Text(_drawerjathiyaText),//Influence
                      onTap: _launchUrlInfluence,
                    ),
      
                    // ListTile(
                    //   title: Text(_draweradminText),//Andministrative
                    //   onTap: _launchUrlAdministrative,
                    // ),
      
                    //more child menu
                  ],
                ),
              ),
              //Drawer Our Leadership
              SingleChildScrollView(
                child: ExpansionTile(
                  title: Text(_drawerleadershipText,),//Our Leadership
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: Text(_drawerfounderText),//Founders
                      onTap: _launchUrlFoundersBio,
                    ),
      
                    ListTile(
                      title: Text(_drawerbiographyText),//Bio Of Leaders
                      onTap: _launchUrlBioLeaders,
                    ),
      
                    ListTile(
                      title: Text(_drawerntrText),//NTR
                      onTap: _launchUrlNtr,
                    ),
                    ListTile(
                      title: Text(_drawermlcText),//NTR
                      onTap: _launchUrlMlc,
                    ),
                    ListTile(
                      title: Text(_drawerloksadbaText),//NTR
                      onTap: _launchUrlLokSabha,
                    ),
                    ListTile(
                      title: Text(_drawerrajyasabhaText),//NTR
                      onTap: _launchUrlRajyaSabha,
                    ),
                    ListTile(
                      title: Text(_drawerdistrictText),//NTR
                      onTap: _launchUrlDistrict,
                    ),
                    ListTile(
                      title: Text(_drawercoordinatorText),//NTR
                      onTap: _launchUrlReginal,
                    ), //more child menu
                  ],
                ),
              ),
              //Drawer our Success
              // SingleChildScrollView(
              //   child: ExpansionTile(
              //     title: Text(_drawersuccessText,),//Our Success
              //     leading: const Icon(Icons.person), //add icon
              //     childrenPadding:
              //     const EdgeInsets.only(left: 60), //children padding
              //     children: [
              //       ListTile(
              //         title: Text(_drawerindiaText),//India
              //         onTap: _launchUrlIndia,
              //       ),
              //
              //       ListTile(
              //         title: Text(_drawerandraText),//Andra Pradesh
              //         onTap: _launchUrlAndraPradesh,
              //       ),
              //
              //       ListTile(
              //         title: Text(_drawertelanganaText),//telangana
              //         onTap: _launchUrlTelangana,
              //       ),
              //       ListTile(
              //         title: Text(_drawerfourtyText),//our Success
              //         onTap: _launchUrlOurSuccess,
              //       ),//more child menu
              //     ],
              //   ),
              // ),
              //Drawer Downloads
              SingleChildScrollView(
                child: ExpansionTile(
                  title: Text(_drawerdownloadText,),
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: Text(_drawermanifestoText,),//Manifesto
                      onTap: _launchUrlManifesto,
                    ),
      
                    ListTile(
                      title: Text(_drawermahanaduText,),//Mahanadu
                      onTap: _launchUrlMahanadu,
                    ),
      
                    ListTile(
                      title: Text(_drawerpictureText,),//My Pictures
                      onTap: _launchUrlMyPic,
                    ),
                    ListTile(
                      title: Text(_drawerlogosText,),//Logos
                      onTap: _launchUrlLogos,
                    ),
                    ListTile(
                      title: Text(_drawerpicofledText,),//pictures
                      onTap: _launchUrlPicofLeaders,
                    ),
                    ListTile(
                      title: Text(_drawerbannersText,),//pictures
                      onTap: _launchUrlBanner,
                    ),///more child menu
                  ],
                ),
              ),
              //Drawer Promotional Information
              // SingleChildScrollView(
              //   child: ExpansionTile(
              //     title: Text(_drawerpromoText,),//Promotional Information
              //     leading: const Icon(Icons.person), //add icon
              //     childrenPadding:
              //     const EdgeInsets.only(left: 60), //children padding
              //     children: [
              //       ListTile(
              //         title: Text(_drawerBabbersText,),//Banners
              //         onTap: _launchUrlBanners,
              //       ),
              //
              //       ListTile(
              //         title: Text(_drawerpostersText,),//posters
              //         onTap: _launchUrlPosters,
              //       ),
              //
              //       ListTile(
              //         title: Text(_drawercampaignText ,),//campaign
              //         onTap: _launchUrlCampaign,
              //       ),
              //       ListTile(
              //         title: Text(_drawerelectioninfoText,),//elections
              //         onTap: _launchUrlElectioninfo,
              //       ),
              //     ],
              //   ),
              // ),
              //Drawer Media Resources
              SingleChildScrollView(
                child: ExpansionTile(
                  title: Text(_drawerMediaresourcesText,),//Media Resources
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: Text(_drawerPressReleasesText,),//Press Release
                      onTap: _launchUrlPress,
                    ),
      
                    ListTile(
                      title: Text(_drawerSpeechesText,),//Programs
                      onTap: _launchUrlSpeeches,
                    ),
      
                    ListTile(
                      title: Text(_drawerprogramsText ,),//Interviews
                      onTap: _launchUrlPrograms,
                    ),
                    ListTile(
                      title: Text(_drawerInterviewText,),//photo
                      onTap: _launchUrlInterviews,
                    ),
                    ListTile(
                      title: Text(_drawerphotoText,),//video
                      onTap: _launchUrlPhoto,
                    ),
                    ListTile(
                      title: Text(_drawerVideoText,),
                      onTap: _launchUrlVideo,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                child: Container(
                  width: 550,
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white10,
                          spreadRadius: 0.2,
                          blurRadius: 0,
                        ),
                      ]),
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                        item['image_path'],
                      ),
                    )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 1,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        currentIndex = index;
                      },
                    ),
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.indigo[700],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlOurHistory,
                      title: Text(_historyThePartyText,
                          style: TextStyle(
                              fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900
                          )),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(_historyThePartyFullText,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15,),
                      ),
                    ),
                    const ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    Image.asset('assets/Party_Schems/HistoryOfTheParty.jpg'),
                  ],
                ),
              ),
      
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.indigo[700],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlabouttheparty,
                      title: Text(
                        _aboutThePartyText,
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w900,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _aboutThePartyFullText,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),
                      ),
                    ),
                    const ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                      ],
                    ),
                    Image.asset('assets/Party_Schems/AboutTheParty.jpg'),
                  ],
                ),
              ),
      
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.indigo[700],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/Party_Schems/YSRJalayagnam.jpg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _historyJaiHindText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          _historyJaiHindFullText,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: _launchUrlJalayagnam,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Icon(Icons.touch_app,color: Colors.white,),
                                  Text('Visit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15),)
                                ],
                              ),
                            ),
                          ),
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ), //Card
      
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.indigo[700],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/Party_Schems/arogyasri.jpeg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _partyInfluenceText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          _partyInfluenceFullText,
                          style:  TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,

                          child: ElevatedButton(
                            onPressed: _launchUrlArogyasri,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(Icons.touch_app,color: Colors.white,),
                                  Text('Visit',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w900,),)
                                ],
                              ),
                            ),
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),

              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.indigo[700],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/Party_Schems/madhyapana.jpg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _partyMadyapanaText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          _partyMadyapanaFullText,
                          style:  TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,

                          child: ElevatedButton(
                            onPressed: _launchUrlAlcohol,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(Icons.touch_app,color: Colors.white,),
                                  Text('Visit',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w900,),)
                                ],
                              ),
                            ),
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),

              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.indigo[700],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/Party_Schems/raithubharosa.jpg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _partyRaithuText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          _partyRaithuFullText,
                          style:  TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,

                          child: ElevatedButton(
                            onPressed: _launchUrlRaithu,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(Icons.touch_app,color: Colors.white,),
                                  Text('Visit',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w900,),)
                                ],
                              ),
                            ),
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//Drawer Home
Future<void> _launchUrlourphilosophy() async {
  if (!await launchUrl(_urlourphilosophy)) {
    throw Exception('Could not launch $_urlourphilosophy');
  }
}
Future<void> _launchUrljaihind() async {
  if (!await launchUrl(_urljaihind)) {
    throw Exception('Could not launch $_urljaihind');
  }
}
Future<void> _launchUrlOurHistory() async {
  if (!await launchUrl(_urltdphistory)) {
    throw Exception('Could not launch $_urltdphistory');
  }
}
Future<void> _launchUrlInfluence() async {
  if (!await launchUrl(_urlinfluence)) {
    throw Exception('Could not launch $_urlinfluence');
  }
}
Future<void> _launchUrlAdministrative() async {
  if (!await launchUrl(_urladministrative)) {
    throw Exception('Could not launch $_urladministrative');
  }
}

//Drawer Our Leadership
Future<void> _launchUrlFoundersBio() async {
  if (!await launchUrl(_urlFoundersBio)) {
    throw Exception('Could not launch $_urlFoundersBio');
  }
}
Future<void> _launchUrlBioLeaders() async {
  if (!await launchUrl(_urlBioLeaders)) {
    throw Exception('Could not launch $_urlBioLeaders');
  }
}
Future<void> _launchUrlNtr() async {
  if (!await launchUrl(_urlNtr)) {
    throw Exception('Could not launch $_urlNtr');
  }
}
Future<void> _launchUrlMlc() async {
  if (!await launchUrl(_urlMlc)) {
    throw Exception('Could not launch $_urlMlc');
  }
}
Future<void> _launchUrlLokSabha() async {
  if (!await launchUrl(_urlLoksabha)) {
    throw Exception('Could not launch $_urlLoksabha');
  }
}
Future<void> _launchUrlRajyaSabha() async {
  if (!await launchUrl(_urlRajyasabha)) {
    throw Exception('Could not launch $_urlRajyasabha');
  }
}
Future<void> _launchUrlDistrict() async {
  if (!await launchUrl(_urlDistrict)) {
    throw Exception('Could not launch $_urlDistrict');
  }
}
Future<void> _launchUrlReginal() async {
  if (!await launchUrl(_urlRegional)) {
    throw Exception('Could not launch $_urlRegional');
  }
}

//Drawer Our Success
Future<void> _launchUrlIndia() async {
  if (!await launchUrl(_urlIndia)) {
    throw Exception('Could not launch $_urlIndia');
  }
}
Future<void> _launchUrlAndraPradesh() async {
  if (!await launchUrl(_urlAndraPradesh)) {
    throw Exception('Could not launch $_urlAndraPradesh');
  }
}
Future<void> _launchUrlTelangana() async {
  if (!await launchUrl(_urlTelangana)) {
    throw Exception('Could not launch $_urlTelangana');
  }
}
Future<void> _launchUrlOurSuccess() async {
  if (!await launchUrl(_urlOurSuccess)) {
    throw Exception('Could not launch $_urlOurSuccess');
  }
}

//Drawer Downloads
Future<void> _launchUrlManifesto() async {
  if (!await launchUrl(_urlManifesto)) {
    throw Exception('Could not launch $_urlManifesto');
  }
}
Future<void> _launchUrlMahanadu() async {
  if (!await launchUrl(_urlMahanadu)) {
    throw Exception('Could not launch $_urlMahanadu');
  }
}
Future<void> _launchUrlMyPic() async {
  if (!await launchUrl(_urlMyPic)) {
    throw Exception('Could not launch $_urlMyPic');
  }
}
Future<void> _launchUrlLogos() async {
  if (!await launchUrl(_urlLogos)) {
    throw Exception('Could not launch $_urlLogos');
  }
}
Future<void> _launchUrlPicofLeaders() async {
  if (!await launchUrl(_urlPicofLeaders)) {
    throw Exception('Could not launch $_urlPicofLeaders');
  }
}
Future<void> _launchUrlBanner() async {
  if (!await launchUrl(_urlBanner)) {
    throw Exception('Could not launch $_urlBanner');
  }
}

//Drawer Promotional
Future<void> _launchUrlBanners() async {
  if (!await launchUrl(_urlBanners)) {
    throw Exception('Could not launch $_urlBanners');
  }
}
Future<void> _launchUrlPosters() async {
  if (!await launchUrl(_urlPosters)) {
    throw Exception('Could not launch $_urlPosters');
  }
}
Future<void> _launchUrlCampaign() async {
  if (!await launchUrl(_urlCampaign)) {
    throw Exception('Could not launch $_urlCampaign');
  }
}
Future<void> _launchUrlElectioninfo() async {
  if (!await launchUrl(_urlElectioninfo)) {
    throw Exception('Could not launch $_urlElectioninfo');
  }
}


//Drawer Media resources
Future<void> _launchUrlPress() async {
  if (!await launchUrl(_urlPress)) {
    throw Exception('Could not launch $_urlPress');
  }
}
Future<void> _launchUrlSpeeches() async {
  if (!await launchUrl(_urlSpeeches)) {
    throw Exception('Could not launch $_urlSpeeches');
  }
}
Future<void> _launchUrlPrograms() async {
  if (!await launchUrl(_urlPrograms)) {
    throw Exception('Could not launch $_urlPrograms');
  }
}
Future<void> _launchUrlInterviews() async {
  if (!await launchUrl(_urlInterviews)) {
    throw Exception('Could not launch $_urlInterviews');
  }
}
Future<void> _launchUrlPhoto() async {
  if (!await launchUrl(_urlPhoto)) {
    throw Exception('Could not launch $_urlPhoto');
  }
}
Future<void> _launchUrlVideo() async {
  if (!await launchUrl(_urlVideo)) {
    throw Exception('Could not launch $_urlVideo');
  }
}

Future<void> _launchUrlabouttheparty() async {
  if (!await launchUrl(_urlabouttheparty)) {
    throw Exception('Could not launch $_urlabouttheparty');
  }
}
Future<void> _launchUrlJalayagnam() async {
  if (!await launchUrl(_urljalayagnam)) {
    throw Exception('Could not launch $_urljalayagnam');
  }
}
Future<void> _launchUrlArogyasri() async {
  if (!await launchUrl(_urlarogyasri)) {
    throw Exception('Could not launch $_urlarogyasri');
  }
}
Future<void> _launchUrlAlcohol() async {
  if (!await launchUrl(_urlmadhyapana)) {
    throw Exception('Could not launch $_urlmadhyapana');
  }
}

Future<void> _launchUrlRaithu() async {
  if (!await launchUrl(_urlraithubharosa)) {
    throw Exception('Could not launch $_urlraithubharosa');
  }
}