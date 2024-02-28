import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

//Drawer Home
final Uri _urlourphilosophy = Uri.parse('https://www.telugudesam.org/our-philosophy/');
final Uri _urljaihind = Uri.parse('https://www.telugudesam.org/jai-hind-and-jai-telugu-desam/');
final Uri _urltdphistory = Uri.parse('https://www.telugudesam.org/tdp-history/');
final Uri _urlinfluence = Uri.parse('https://www.telugudesam.org/tdp-impact-on-the-nation/');
final Uri _urladministrative = Uri.parse('https://www.telugudesam.org/party-organization-structure/');

//Drawer Our Leadership
final Uri _urlFoundersBio = Uri.parse('https://www.telugudesam.org/life-and-history-of-our-founder/');
final Uri _urlBioLeaders = Uri.parse('https://www.telugudesam.org/life-and-history-of-our-leader-ncbn/');
final Uri _urlNtr = Uri.parse('https://www.telugudesam.org/ntr-centenary-celebrations/');

//Drawer Our success
final Uri _urlIndia = Uri.parse('https://www.telugudesam.org/role-in-building-the-nation/');
final Uri _urlAndraPradesh = Uri.parse('https://www.telugudesam.org/role-in-building-the-nation-andhra-pradesh/');
final Uri _urlTelangana = Uri.parse('https://www.telugudesam.org/role-in-building-the-nation-telangana/');
final Uri _urlOurSuccess = Uri.parse('https://www.telugudesam.org/40-years-of-success/');

// Drawer Downloads
final Uri _urlManifesto = Uri.parse('https://www.telugudesam.org/manifesto/');
final Uri _urlMahanadu = Uri.parse('https://www.telugudesam.org/2022-mahanadu-resolutions/');
final Uri _urlMyPic = Uri.parse('https://www.photowithmyleader.com/');
final Uri _urlLogos = Uri.parse('https://www.telugudesam.org/party-logos/');
final Uri _urlPicofLeaders = Uri.parse('https://www.telugudesam.org/pictures-of-our-leaders/');

//drawer Promotional Information
final Uri _urlBanners = Uri.parse('https://www.telugudesam.org/party-banners-and-booklets/');
final Uri _urlPosters = Uri.parse('https://www.telugudesam.org/posters-and-brochures/');
final Uri _urlCampaign = Uri.parse('https://www.telugudesam.org/songs/');
final Uri _urlElectioninfo = Uri.parse('https://www.telugudesam.org/election-information-and-suggestions/');

// drawer Media Resources
final Uri _urlPress = Uri.parse('https://www.telugudesam.org/press-releases/');
final Uri _urlSpeeches = Uri.parse('https://www.telugudesam.org/speeches/');
final Uri _urlPrograms = Uri.parse('https://www.telugudesam.org/programs/');
final Uri _urlInterviews = Uri.parse('https://www.telugudesam.org/interviews-articles/');
final Uri _urlPhoto = Uri.parse('https://www.telugudesam.org/photo-gallery/');
final Uri _urlVideo = Uri.parse('https://www.telugudesam.org/video-gallery/');




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
    {"id": 1, "image_path": 'assets/slider/tdp_slider-1.jpg'},
    {"id": 2, "image_path": 'assets/slider/tdp_slider-2.jpg'},
    {"id": 3, "image_path": 'assets/slider/tdp_slider-3.jpg'},
    {"id": 4, "image_path": 'assets/slider/tdp_slider-4.jpg'},
    {"id": 5, "image_path": 'assets/slider/tdp_slider-5.jpg'},
    {"id": 6, "image_path": 'assets/slider/tdp_slider-6.jpeg'},
    {"id": 7, "image_path": 'assets/slider/tdp_slider-7.jpeg'},
    {"id": 8, "image_path": 'assets/slider/tdp_slider-8.jpeg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;


  int _currentIndex = 0; // Track the current selected index
  Locale _selectedLocale = const Locale('en', 'US'); // Default language
  String _greetingText = 'Hello, World!'; // Default greeting text
  String _appTitle = 'Telugu Desam Party'; // Default app title
  String _drawerText='Home';//Default Drawer option 1

  String _drawerourphilosophyText='Our Philosophy';//Default Drawer option 1.1
  String _drawerjaihindText='Jai Hind-Jai telugu Desam';//Default Drawer option 1.2
  String _drawerourhistoryText='Our History';//Default Drawer option 1.3
  String _drawerjathiyaText='Influence of Telugu Desam on National Politics';//Default Drawer option 1.4
  String _draweradminText='Administrative category';//Default Drawer option 1.4

  String _drawerleadershipText='Our Leadership';//Default Drawer option 2.1
  String _drawerfounderText='Founders Biography';//Default Drawer option 2.2
  String _drawerbiographyText='Biography of a Party Leader';//Default Drawer option 2.3
  String _drawerntrText='NTR centenary celebrations';//Default Drawer option 2.4

  String _drawersuccessText='Our Success';//Default Drawer option 3.1
  String _drawerindiaText='India';//Default Drawer option 3.2
  String _drawerandraText='Andra Pradesh';//Default Drawer option 3.3
  String _drawertelanganaText='Telangana';//Default Drawer option 3.4
  String _drawerfourtyText='Our Success';//Default Drawer option 3.5

  String _drawerdownloadText='Downloads';//Default Drawer option 4.1
  String _drawermanifestoText='Manifesto';//Default Drawer option 4.2
  String _drawermahanaduText='Mahanadu 2022 resolutions';//Default Drawer option 4.3
  String _drawerpictureText='My picture with leader';//Default Drawer option 4.4
  String _drawerlogosText='Logos';//Default Drawer option 4.5
  String _drawerpicofledText='Pictures of leaders';//Default Drawer option 4.6

  String _drawerpromoText='Promotional information';//Default Drawer option 5.1
  String _drawerBabbersText='Banners / Booklets';//Default Drawer option 5.2
  String _drawerpostersText='Posters / Pamphlets';//Default Drawer option 5.3
  String _drawercampaignText='Campaign songs';//Default Drawer option 5.4
  String _drawerelectioninfoText='Election Information / Instructions';//Default Drawer option 5.5

  String _drawerMediaresourcesText='Media resources';//Default Drawer option 6.1
  String _drawerPressReleasesText='Press Releases';//Default Drawer option 6.2
  String _drawerSpeechesText='Speeches';//Default Drawer option 6.3
  String _drawerprogramsText='programs';//Default Drawer option 6.4
  String _drawerInterviewText='Interviews & Articles';//Default Drawer option 6.5
  String _drawerphotoText='Photo gallery';//Default Drawer option 6.6
  String _drawerVideoText='Video gallery';//Default Drawer option 6.7

  // History Of The Party
  String _historyThePartyText='History Of The Party';//Default History Of The Party
  String _historyThePartyFullText='Sri Nandamuri Taraka Rama Rao has risen from the level of a common farmers child to the level of a leading actor of Telugu cinema who is adored by millions of fans on the silver screen. NTRs magic on screen in various mythological roles as Rama, Krishna and Srinivasa made him a walking god in the eyes of fans.\n\n   Ever since he was in the film industry, whenever there was any danger to the Telugu people... whenever there was a need for the country... NTR used to gather all the artists and put on art performances, walk around the streets and collect donations and give them to the central and state governments. NTR feels that both art and artist are for the people.';//Default History Of The Party

  //About The Party
  String _aboutThePartyText='Party Doctrine \n(Society is Temple - People are Gods)';//Default About The Party
  String _aboutThePartyFullText='True politics is selfless service to society is the basic theory of Telugu Desam Party founder Mr. Nandamuri Taraka Rama Rao (Anna NTR). NTR said that he got inspiration from Lord Buddhas saying Sangham Saranam Gachchami and gave the slogan Society is temple - people are gods to Telugu Desam Party.\n\n    By the time NTR founded Telugu Desam Party, many political parties were working in the country with different ideologies. At such a time, NTR said, "I am neither a socialist, nor a communist, nor a capitalist... I am a humanist." That means humanity is the real foundation of Telugu Desam Party politics.';//Default About The Party
  // Jai Hind
  String _historyJaiHindText='Jai Hind - Jai Telugu Desam\n  "Janani Janma Bhumishcha...Swargadapi Gariyasi".';//Default About The Party
  String _historyJaiHindFullText='     The nation of Bharata achieved swaraj with many sacrifices, initiation and blood sacrifice. Many Telugu heroes also fought bravely in the freedom struggle. It is said that Telugu drama has no shortage of patriots and adventure heroes.\n   Alluri Sitaramaraju, the Telugu hero who organized the people of Manyam and made each of them a hero and touched the hearts of the white people... Andhrakesari Tanguturi Prakasam, whose heart was exposed to gun bullets.\n    Satyagraha leader Andhra Ratna Duggirala Gopalakrishnaiah, Patriot Konda Venkatappayya, Deshodharaka Nageswara Rao, Raithu Bandhavu Acharya Ranga... Many warriors like Swami Ramananda Tirtha, Burgula Ramakrishna Rao stood on Telugu soil and sacrificed their lives for independent India.';//Default About The Party
  //
  String _partyInfluenceText='Influence of Telugu Desam on National Politics';
  String _partyInfluenceFullText = '    Telugu Desam Party has made its mark in national politics from the very beginning. The Telugu Desam Party, which won a historic victory in Andhra Pradesh within 9 months of its formation, and the leadership of NTR have become a question mark for the Congress, which is showing unquestionable dominance in the national politics of the time. NTR stood as a compass for non-Congress parties.\n   NTR, who changed the politics of the state, also tried to separate the countrys politics from the Congress monopoly with the same self-confidence. NTR used the occasion of his birthday on May 28, 1983, less than six months after he came to power.';




  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updateGreetingText();
      _updateAppTitle();
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
        _drawerourphilosophyText = 'Our Philosophy';
        break;
      case 'te':
        _drawerourphilosophyText = 'మన సిద్ధాంతం';
        break;
      default:
        _drawerourphilosophyText = 'Our Philosophy';
    }
  }

  void _updateDrawerHomeJaiHindText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerjaihindText = 'Jai Hind-Jai Telugu Desam';
        break;
      case 'te':
        _drawerjaihindText = 'జై హింద్ - జై తెలుగుదేశం';
        break;
      default:
        _drawerjaihindText = 'Jai Hind-Jai Telugu Desam';
    }
  }

  void _updateDrawerOurHistoryText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerourhistoryText = 'Our History';
        break;
      case 'te':
        _drawerourhistoryText = 'మన చరిత్ర';
        break;
      default:
        _drawerourhistoryText = 'Our History';
    }
  }

  void _updateDrawerJathiyaText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerjathiyaText = 'Influence of Telugu Desam on National Politics';
        break;
      case 'te':
        _drawerjathiyaText = 'జాతీయ రాజకీయాలపై తెలుగుదేశం ప్రభావం';
        break;
      default:
        _drawerjathiyaText = 'Influence of Telugu Desam on National Politics';
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
        _drawerfounderText = 'Founders Biography';
        break;
      case 'te':
        _drawerfounderText = 'వ్యవస్థాపకుని జీవిత చరిత్ర';
        break;
      default:
        _drawerfounderText = 'Founders Biography';
    }
  }

  void _updateDrawerBiographyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerbiographyText = 'Biography of a Party Leader';
        break;
      case 'te':
        _drawerbiographyText = 'పార్టీ అధినాయకుని జీవిత చరిత్ర';
        break;
      default:
        _drawerbiographyText = 'Biography of a Party Leader';
    }
  }

  void _updateDrawerntrText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerntrText = 'NTR centenary celebrations';
        break;
      case 'te':
        _drawerntrText = 'NTR శత జయంతి ఉత్సవాలు';
        break;
      default:
        _drawerntrText = 'NTR centenary celebrations';
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
        _drawermanifestoText = 'Manifesto';
        break;
      case 'te':
        _drawermanifestoText = 'మ్యానిఫెస్టో';
        break;
      default:
        _drawermanifestoText = 'Manifesto';
    }
  }

  void _updateDrawerMahanaduText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawermahanaduText = 'Mahanadu 2022 resolutions';
        break;
      case 'te':
        _drawermahanaduText = 'మహానాడు 2022 తీర్మానాలు';
        break;
      default:
        _drawermahanaduText = 'Mahanadu 2022 resolutions';
    }
  }

  void _updateDrawerPictureText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerpictureText = 'My picture with leader';
        break;
      case 'te':
        _drawerpictureText = 'నాయకుడితో నా చిత్రం';
        break;
      default:
        _drawerpictureText = 'My picture with leader';
    }
  }

  void _updateDrawerPicturesofleadersText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerpicofledText = 'Pictures of leaders';
        break;
      case 'te':
        _drawerpicofledText = 'నాయకుల చిత్రాలు';
        break;
      default:
        _drawerpicofledText = 'Pictures of leaders';
    }
  }

  void _updateDrawerLogosText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _drawerlogosText = 'Logos';
        break;
      case 'te':
        _drawerlogosText = 'లోగోలు';
        break;
      default:
        _drawerlogosText = 'Logos';
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
        _drawerSpeechesText = 'Speeches';
        break;
      case 'te':
        _drawerSpeechesText = 'ప్రసంగాలు';
        break;
      default:
        _drawerSpeechesText = 'Speeches';
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
        _drawerText = 'Home';
        break;
      case 'te':
        _drawerText = 'హోమ్';
        break;
      default:
        _drawerText = 'Home';
    }
  }

  void _updateAppTitle() {
    setState(() {
      switch (_selectedLocale.languageCode) {
        case 'en':
          _appTitle = 'Telugu Desam Party';
          break;
        case 'te':
          _appTitle = 'తెలుగు దేశం పార్టీ';
          break;
        default:
          _appTitle = 'Telugu Desam';
      }
    }
    );
  }

  // About Of the Party
  void _updateAboutthepartyText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _aboutThePartyText = 'Party Doctrine \n(Society is Temple - People are Gods)';
        break;
      case 'te':
        _aboutThePartyText = 'పార్టీ సిద్ధాంతం \n(సమాజమే దేవాలయం - ప్రజలే దేవుళ్ళు)';
        break;
      default:
        _aboutThePartyText = 'Party Doctrine \n(Society is Temple - People are Gods)';
    }
  }

  void _updateAboutthepartyFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _aboutThePartyFullText = 'True politics is selfless service to society is the basic theory of Telugu Desam Party founder Mr. Nandamuri Taraka Rama Rao (Anna NTR). NTR said that he got inspiration from Lord Buddhas saying Sangham Saranam Gachchami and gave the slogan Society is temple - people are gods to Telugu Desam Party.\n   By the time NTR founded Telugu Desam Party, many political parties were working in the country with different ideologies. At such a time, NTR said, "I am neither a socialist, nor a communist, nor a capitalist... I am a humanist." That means humanity is the real foundation of Telugu Desam Party politics.';
        break;
      case 'te':
        _aboutThePartyFullText = 'సమాజానికి నిస్వార్థ సేవ చేయడమే నిజమైన రాజకీయం అన్నది తెలుగుదేశం పార్టీ వ్యవస్థాపకుడు శ్రీ నందమూరి తారక రామారావు (అన్న ఎన్టీఆర్) గారి మూల సిద్ధాంతం. “సంఘం శరణం గచ్ఛామి” అన్న బుద్ధ భగవానుని సూక్తి నుండే తాను స్ఫూర్తిని పొంది “సమాజమే దేవాలయం – ప్రజలే దేవుళ్ళు” అన్న నినాదాన్ని తెలుగుదేశం పార్టీకి అందించానని అన్న ఎన్టీఆర్ చెప్పారు.\n  అన్న ఎన్టీఆర్ తెలుగుదేశం పార్టీ స్థాపించేనాటికి దేశంలో అనేక రాజకీయ పార్టీలు వివిధ సిద్ధాంతాలతో పనిచేస్తున్నాయి. అలాంటి సమయంలో “నేను సోషలిస్ట్ నో, కమ్యూనిస్టునో, కాపిటలిస్టునో కాదు.. నేను హ్యూమనిస్టుని” అన్నారు ఎన్టీఆర్. అంటే తెలుగుదేశం పార్టీ రాజకీయాలకు మానవత్వమే అసలైన పునాది.';
        break;
      default:
        _aboutThePartyFullText = 'True politics is selfless service to society is the basic theory of Telugu Desam Party founder Mr. Nandamuri Taraka Rama Rao (Anna NTR). NTR said that he got inspiration from Lord Buddhas saying Sangham Saranam Gachchami and gave the slogan Society is temple - people are gods to Telugu Desam Party.\n    By the time NTR founded Telugu Desam Party, many political parties were working in the country with different ideologies. At such a time, NTR said, "I am neither a socialist, nor a communist, nor a capitalist... I am a humanist." That means humanity is the real foundation of Telugu Desam Party politics.';
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
        _historyThePartyFullText = 'Sri Nandamuri Taraka Rama Rao has risen from the level of a common farmers child to the level of a leading actor of Telugu cinema who is adored by millions of fans on the silver screen. NTRs magic on screen in various mythological roles as Rama, Krishna and Srinivasa made him a walking god in the eyes of fans.\n\n   Ever since he was in the film industry, whenever there was any danger to the Telugu people... whenever there was a need for the country... NTR used to gather all the artists and put on art performances, walk around the streets and collect donations and give them to the central and state governments. NTR feels that both art and artist are for the people.';
        break;
      case 'te':
        _historyThePartyFullText = 'సామాన్య రైతు బిడ్డ స్థాయి నుండి కోట్లాది మంది అభిమానులు వెండితెర వేలుపుగా పూజించే తెలుగు సినీరంగ అగ్రశ్రేణి కథానాయకుడి స్థాయి వరకు పట్టుదల, క్రమశిక్షణ, నిరంతర శ్రమలకు మారుపేరుగా ఎదిగారు శ్రీ నందమూరి తారక రామారావు గారు. రాముడిగా, కృష్ణుడిగా, శ్రీనివాసునిగా పలు పౌరాణిక పాత్రల్లో ఎన్టీఆర్ సినిమా తెరపై చేసిన మాయాజాలం ఆయన్ను అభిమానుల దృష్టిలో నడిచే దేవుడిని చేసింది.\n\n       సినీ పరిశ్రమలో ఉన్నప్పటి నుంచి కూడా తెలుగువారికి ఎప్పుడు ఏ ఆపద కలిగినా... దేశానికి ఎప్పుడు ఏ అవసరం కలిగినా... సహా కళాకారులందరినీ కూడగట్టుకుని కళా ప్రదర్శనలిచ్చి, జోలె పట్టి వీధుల్లో తిరుగుతూ విరాళాలు సేకరించి కేంద్ర, రాష్ట్ర ప్రభుత్వాలకు అందించేవారు ఎన్టీఆర్. కళగానీ, కళాకారుడు గానీ ప్రజల కోసమే అని ఎన్టీఆర్ భావన.';
        break;
      default:
        _historyThePartyFullText = 'Sri Nandamuri Taraka Rama Rao has risen from the level of a common farmers child to the level of a leading actor of Telugu cinema who is adored by millions of fans on the silver screen. NTRs magic on screen in various mythological roles as Rama, Krishna and Srinivasa made him a walking god in the eyes of fans.\n\n    Ever since he was in the film industry, whenever there was any danger to the Telugu people... whenever there was a need for the country... NTR used to gather all the artists and put on art performances, walk around the streets and collect donations and give them to the central and state governments. NTR feels that both art and artist are for the people.';
    }
  }

  // Jai Hind
  void _updateJaiHindText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _historyJaiHindText = 'Jai Hind - Jai Telugu Desam\n  "Janani Janma Bhumishcha...Swargadapi Gariyasi"';
        break;
      case 'te':
        _historyJaiHindText = 'జై హింద్ - జై తెలుగుదేశం\n  "జననీ జన్మ భూమిశ్చ... స్వర్గాదపీ గరీయసీ"';
        break;
      default:
        _historyJaiHindText = 'Jai Hind - Jai Telugu Desam\n  "Janani Janma Bhumishcha...Swargadapi Gariyasi"';
    }
  }

  void _updateJaiHindFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _historyJaiHindFullText = '    The nation of Bharata achieved swaraj with many sacrifices, initiation and blood sacrifice. Many Telugu heroes also fought bravely in the freedom struggle. It is said that Telugu drama has no shortage of patriots and adventure heroes.\n   Alluri Sitaramaraju, the Telugu hero who organized the people of Manyam and made each of them a hero and touched the hearts of the white people... Andhrakesari Tanguturi Prakasam, whose heart was exposed to gun bullets.\n   Satyagraha leader Andhra Ratna Duggirala Gopalakrishnaiah, Patriot Konda Venkatappayya, Deshodharaka Nageswara Rao, Raithu Bandhavu Acharya Ranga... Many warriors like Swami Ramananda Tirtha, Burgula Ramakrishna Rao stood on Telugu soil and sacrificed their lives for independent India.';
        break;
      case 'te':
        _historyJaiHindFullText = 'ఎన్నో త్యాగాలతో, మరెంతో దీక్షతో, రక్తతర్పణం చేసి స్వరాజ్యాన్ని సాధించుకుంది భరత జాతి. స్వాతంత్య్ర సంగ్రామంలో ఎందరో తెలుగు వీరులు సైతం వీరకిశోరాలై పోరాడారు. తెలుగునాట దేశభక్తులకు, సాహస వీరులకు కొదవే లేదని చాటారు.\n   మన్యం ప్రజలను సంఘటితపరచి ఒక్కొక్కరినీ ఒక్కొక్క వీరుడుగా తీర్చిదిద్ది తెల్లదొరల గుండెలదరగొట్టిన తెలుగు వీరుడు అల్లూరి సీతారామరాజు... గుండెను తుపాకీ గుండ్లకు ఎదురొడ్డిన ఆంధ్రకేసరి టంగుటూరి ప్రకాశం... చీరాల-పేరాల సత్యాగ్రహ సారథి ఆంధ్రరత్న దుగ్గిరాల గోపాలకృష్ణయ్య, దేశభక్త కొండా వెంకటప్పయ్య, దేశోద్ధారక నాగేశ్వరరావు, రైతు బాంధవుడు ఆచార్య రంగా... స్వామి రామానంద తీర్థ, బూర్గుల రామకృష్ణారావు వంటి యోధానుయోధులు ఎందరో తెలుగు నేలపై నిలిచి స్వతంత్ర భారతావని కోసం జీవితాలను అంకితం చేసారు';
        break;
      default:
        _historyJaiHindFullText = '     The nation of Bharata achieved swaraj with many sacrifices, initiation and blood sacrifice. Many Telugu heroes also fought bravely in the freedom struggle. It is said that Telugu drama has no shortage of patriots and adventure heroes.\n   Alluri Sitaramaraju, the Telugu hero who organized the people of Manyam and made each of them a hero and touched the hearts of the white people... Andhrakesari Tanguturi Prakasam, whose heart was exposed to gun bullets.\n  Satyagraha leader Andhra Ratna Duggirala Gopalakrishnaiah, Patriot Konda Venkatappayya, Deshodharaka Nageswara Rao, Raithu Bandhavu Acharya Ranga... Many warriors like Swami Ramananda Tirtha, Burgula Ramakrishna Rao stood on Telugu soil and sacrificed their lives for independent India.';
    }
  }

  // Party Influence
  void _updatePartyInfluenceText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyInfluenceText = 'Influence of Telugu Desam on National Politics';
        break;
      case 'te':
        _partyInfluenceText = 'జాతీయ రాజకీయాలపై తెలుగుదేశం ప్రభావం';
        break;
      default:
        _partyInfluenceText = 'Influence of Telugu Desam on National Politics';
    }
  }

  void _updatePartyInfluenceFullText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _partyInfluenceFullText = '    Telugu Desam Party has made its mark in national politics from the very beginning. The Telugu Desam Party, which won a historic victory in Andhra Pradesh within 9 months of its formation, and the leadership of NTR have become a question mark for the Congress, which is showing unquestionable dominance in the national politics of the time. NTR stood as a compass for non-Congress parties.\n   NTR, who changed the politics of the state, also tried to separate the countrys politics from the Congress monopoly with the same self-confidence. NTR used the occasion of his birthday on May 28, 1983, less than six months after he came to power.';
        break;
      case 'te':
        _partyInfluenceFullText = 'తెలుగుదేశం పార్టీ మొదటి నుంచి జాతీయ రాజకీయాల్లో తనదైన ముద్ర వేసింది. ఆవిర్భవించిన 9నెలల్లోనే ఆంధ్రప్రదేశ్ లో చారిత్రక విజయాన్ని సొంతం చేసుకున్న తెలుగుదేశం పార్టీ, ఎన్టీఆర్ నాయకత్వం… నాటి జాతీయ రాజకీయాల్లో తిరుగులేని ఆధిపత్యాన్ని ప్రదర్శిస్తున్న కాంగ్రెస్ కు ప్రశ్నార్థకంగా మారాయి. కాంగ్రెసేతర పార్టీలకు ఎన్టీఆర్ ఒక దిక్సూచిలా నిలిచారు.\n     రాష్ట్ర రాజకీయాలను మార్చిన ఎన్టీఆర్ సైతం అదే ఆత్మవిశ్వాసంతో దేశ రాజకీయాలను కాంగ్రెస్ గుత్తాధిపత్యం నుంచి విడదీసేందుకు ప్రయత్నించారు. ఎన్టీఆర్ తాను అధికారంలోకి వచ్చిన ఆరునెలల లోపే మే 28, 1983న తన పుట్టినరోజు సందర్భాన్ని ఇందుకు ఉపయోగించుకున్నారు';
        break;
      default:
        _partyInfluenceFullText = '     Telugu Desam Party has made its mark in national politics from the very beginning. The Telugu Desam Party, which won a historic victory in Andhra Pradesh within 9 months of its formation, and the leadership of NTR have become a question mark for the Congress, which is showing unquestionable dominance in the national politics of the time. NTR stood as a compass for non-Congress parties.\n   NTR, who changed the politics of the state, also tried to separate the countrys politics from the Congress monopoly with the same self-confidence. NTR used the occasion of his birthday on May 28, 1983, less than six months after he came to power.';
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "route",
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.yellow[500],
          title: Row(
            children: [
              SizedBox(width: 8),
              Text(
                _appTitle,
                style: TextStyle(fontSize: 20,color: Colors.red[900],fontWeight: FontWeight.w900,),
              ),
              const SizedBox(width: 25),
              Image.asset(
                'assets/images/logo.png', // Replace with the actual path or asset reference
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
          backgroundColor: Colors.yellow[500],
          child: ListView(
            //padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow[500],
                ),
                child: Container(
                  child: Center(
                    child: Stack(
                      children: [
                        // Background image
                        Image.asset(
                          'assets/slider/tdp_slider-1.jpg', // Replace with your image path
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
      
                    ListTile(
                      title: Text(_draweradminText),//Andministrative
                      onTap: _launchUrlAdministrative,
                    ),
      
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
                    ), //more child menu
                  ],
                ),
              ),
              //Drawer our Success
              SingleChildScrollView(
                child: ExpansionTile(
                  title: Text(_drawersuccessText,),//Our Success
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: Text(_drawerindiaText),//India
                      onTap: _launchUrlIndia,
                    ),
      
                    ListTile(
                      title: Text(_drawerandraText),//Andra Pradesh
                      onTap: _launchUrlAndraPradesh,
                    ),
      
                    ListTile(
                      title: Text(_drawertelanganaText),//telangana
                      onTap: _launchUrlTelangana,
                    ),
                    ListTile(
                      title: Text(_drawerfourtyText),//our Success
                      onTap: _launchUrlOurSuccess,
                    ),//more child menu
                  ],
                ),
              ),
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
                    ),///more child menu
                  ],
                ),
              ),
              //Drawer Promotional Information
              SingleChildScrollView(
                child: ExpansionTile(
                  title: Text(_drawerpromoText,),//Promotional Information
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding:
                  const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: Text(_drawerBabbersText,),//Banners
                      onTap: _launchUrlBanners,
                    ),
      
                    ListTile(
                      title: Text(_drawerpostersText,),//posters
                      onTap: _launchUrlPosters,
                    ),
      
                    ListTile(
                      title: Text(_drawercampaignText ,),//campaign
                      onTap: _launchUrlCampaign,
                    ),
                    ListTile(
                      title: Text(_drawerelectioninfoText,),//elections
                      onTap: _launchUrlElectioninfo,
                    ),
                  ],
                ),
              ),
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
                      onTap: _launchUrlInterviews,
                    ),
                    ListTile(
                      title: Text(_drawerInterviewText,),//photo
                      onTap: _launchUrlPhoto,
                    ),
                    ListTile(
                      title: Text(_drawerphotoText,),//video
                      onTap: _launchUrlVideo,
                    ),
                    ListTile(
                      title: Text(_drawerVideoText,),
                      //onTap: _launchUrlfounderpandit,
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
                color: Colors.yellow[500],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlOurHistory,
                      title: Text(_historyThePartyText,
                          style: TextStyle(
                              fontSize: 18,
                            color: Colors.red[900],
                            fontWeight: FontWeight.w900
                          )),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(_historyThePartyFullText,
                        style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.w600,fontSize: 15,),
                      ),
                    ),
                    const ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    Image.asset('assets/images/history.jpg'),
                  ],
                ),
              ),
      
              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.yellow[500],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlOurSuccess,
                      title: Text(
                        _aboutThePartyText,
                        style: TextStyle(color: Colors.red[900],fontSize: 18,fontWeight: FontWeight.w900,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _aboutThePartyFullText,
                        style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.w600,fontSize: 15),
                      ),
                    ),
                    const ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                      ],
                    ),
                    Image.asset('assets/images/about.jpg'),
                  ],
                ),
              ),
      
              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.yellow[500],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/jai_telugu_desam.jpg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _historyJaiHindText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red[900],
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
                            color: Colors.red[800],
                            fontWeight: FontWeight.w600,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: _launchUrljaihind,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                            child: const Padding(
                              padding: EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Icon(Icons.touch_app,color: Colors.yellow,),
                                  Text('Visit',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w900,fontSize: 15),)
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
                color: Colors.yellow[500],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/images/party_sidhanthm.jpg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          _partyInfluenceText,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red[900],
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
                            color: Colors.red[900],
                            fontWeight: FontWeight.w600,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,
      
                          child: ElevatedButton(
                            onPressed: _launchUrlInfluence,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(Icons.touch_app,color: Colors.yellow,),
                                  Text('Visit',style: TextStyle(color: Colors.yellow,fontSize: 15,fontWeight: FontWeight.w900,),)
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