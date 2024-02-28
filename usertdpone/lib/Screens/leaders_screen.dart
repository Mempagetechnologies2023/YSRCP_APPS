import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/position/gf_position.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
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

//Ballaya babu Twitter
final Uri _urlballaya = Uri.parse('https://twitter.com/manabalayya?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor');
// Lokesh Babu Twitter
final Uri _urllokesh = Uri.parse('https://twitter.com/naralokesh?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor');

// CBN Twitter
final Uri _urlcbn = Uri.parse('https://twitter.com/ncbn?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor');

// SR NTR
final Uri _urlsrntrt = Uri.parse('https://twitter.com/JaiTDP?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor');
final Uri _urlsrntrfb = Uri.parse('https://www.facebook.com/TDP.Official/');
final Uri _urlsrntrin = Uri.parse('https://www.instagram.com/jai_tdp/?hl=en');




class LeadersPageMain extends StatelessWidget {
  const LeadersPageMain({super.key});

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
      home: LeadersPage(),
    );
  }
}


class LeadersPage extends StatefulWidget {
  const LeadersPage({super.key});

  @override
  State<LeadersPage> createState() => _LeadersPageState();
}

class _LeadersPageState extends State<LeadersPage> {
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

  // Leader NTR
  String _ntrNameText='Nandamuri Taraka Rama Rao';//Default Drawer option 6.7
  String _ntrdisText='Founder of TDP Party';//Default Drawer option 6.7
  String _ntrjobText='10th Chief Minister of United Andhra Pradesh';//Default Drawer option 6.7

  // Leader CBN
  String _cbnNameText='Nara Chandrababu Naidu';//Default Drawer option 6.7
  String _cbndisText='Founder of TDP Party';//Default Drawer option 6.7
  String _cbnjobText='10th Chief Minister of United Andhra Pradesh';//Default Drawer option 6.7

  // Leader NLK
  String _nlkNameText='Nara Lokesh';//Default Drawer option 6.7
  String _nlkdisText='General Secretary Telugu Desam Party';//Default Drawer option 6.7
  String _nlkjobText='Former Minister for Panchayat Raj';//Default Drawer option 6.7

  // Leader NBK
  String _nbkNameText='Nandamuri Balakrishna ';//Default Drawer option 6.7
  String _nbkdisText='General Secretary Telugu Desam Party';//Default Drawer option 6.7
  String _nbkjobText='Former Minister for Panchayat Raj';//Default Drawer option 6.7


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


      //Leader NTR
      _updateNtrnameText();
      _updateNtrDisText();
      _updateNtrjobText();

      //Leader CBN
      _updateCbnnameText();
      _updateCbnDisText();
      _updateCbnjobText();

      //Leader CBN
      _updateNlknameText();
      _updateNlkDisText();
      _updateNlkjobText();

      //Leader NBK
      _updateNbknameText();
      _updateNbkDisText();

    });
  }

  void _updateGreetingText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _greetingText = 'Hello, World! Leaders Page';
        break;
      case 'te':
        _greetingText = 'శుభోదయం';
        break;
      default:
        _greetingText = 'Hello, World! Leaders Page';
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

  // Leader NTR
  void _updateNtrnameText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _ntrNameText = 'Nandamuri Taraka Rama Rao';
        break;
      case 'te':
        _ntrNameText = 'నందమూరి తారక రామారావు';
        break;
      default:
        _ntrNameText = 'Nandamuri Taraka Rama Rao';
    }
  }

  void _updateNtrDisText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _ntrdisText = 'Founder of TDP Party';
        break;
      case 'te':
        _ntrdisText = 'టీడీపీ పార్టీ వ్యవస్థాపకుడు';
        break;
      default:
        _ntrdisText = 'Founder of TDP Party';
    }
  }

  void _updateNtrjobText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _ntrjobText = '10th Chief Minister of United Andhra Pradesh';
        break;
      case 'te':
        _ntrjobText = 'ఉమ్మడి ఆంధ్రప్రదేశ్ 10వ ముఖ్యమంత్రి';
        break;
      default:
        _ntrjobText = '10th Chief Minister of United Andhra Pradesh';
    }
  }

  // Leader CBN
  void _updateCbnnameText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _cbnNameText = 'Nara Chandrababu Naidu';
        break;
      case 'te':
        _cbnNameText = 'నారా చంద్రబాబు నాయుడు';
        break;
      default:
        _cbnNameText = 'Nara Chandrababu Naidu';
    }
  }

  void _updateCbnDisText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _cbndisText = 'President of TDP Party Present';
        break;
      case 'te':
        _cbndisText = 'ప్రస్తుతం టీడీపీ పార్టీ అధ్యక్షుడు';
        break;
      default:
        _cbndisText = 'President of TDP Party Present';
    }
  }

  void _updateCbnjobText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _cbnjobText = '1th Chief Minister of United Andhra Pradesh';
        break;
      case 'te':
        _cbnjobText = 'ఉమ్మడి ఆంధ్రప్రదేశ్ 10వ ముఖ్యమంత్రి';
        break;
      default:
        _cbnjobText = '10th Chief Minister of United Andhra Pradesh';
    }
  }

  // Leader NLK
  void _updateNlknameText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _nlkNameText = 'Nara Lokesh';
        break;
      case 'te':
        _nlkNameText = 'నారా లోకేష్';
        break;
      default:
        _nlkNameText = 'Nara Lokesh';
    }
  }

  void _updateNlkDisText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _nlkdisText = 'General Secretary Telugu Desam Party';
        break;
      case 'te':
        _nlkdisText = 'ప్రధాన కార్యదర్శి తెలుగుదేశం పార్టీ';
        break;
      default:
        _nlkdisText = 'General Secretary Telugu Desam Party';
    }
  }

  void _updateNlkjobText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _nlkjobText = 'Former Minister for Panchayat Raj';
        break;
      case 'te':
        _nlkjobText = 'పంచాయతీరాజ్ శాఖ మాజీ మంత్రి';
        break;
      default:
        _nlkjobText = 'Former Minister for Panchayat Raj';
    }
  }

  // Leader NBK
  void _updateNbknameText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _nbkNameText = 'Nandamuri Balakrishna ';
        break;
      case 'te':
        _nbkNameText = 'నందమూరి బాలకృష్ణ';
        break;
      default:
        _nbkNameText = 'Nandamuri Balakrishna ';
    }
  }

  void _updateNbkDisText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _nbkdisText = 'Member of Andhra Legislative Assembly';
        break;
      case 'te':
        _nbkdisText = 'ఆంధ్ర శాసన సభ సభ్యుడు';
        break;
      default:
        _nbkdisText = 'Member of Andhra Legislative Assembly';
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
              const SizedBox(width: 8),
              Text(
                _appTitle,
                style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.red[900]),
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
              child: const Text('EN'),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () => _changeLanguage(const Locale('te', 'TE')),
              child: const Text('TE'),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.orange[400],
          child: ListView(
            //padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                child: Container(
                  child: Center(
                    child: Stack(
                      children: [
                        // Background image
                        Image.asset(
                          'assets/slider/tdp_slider-1.jpg', // Replace with your image path
                          fit: BoxFit.cover,
                          // width: double.infinity,
                          // height: double.infinity,
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
              GFCard(
                color: Colors.yellow,
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                // height: 650,
                image: Image.asset(
                  'assets/Leaders/ntrleader.jpg',
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                showImage: true,
                title: GFListTile(
                  onLongPress: _launchUrlNtr,
                  avatar: const GFAvatar(
                    backgroundImage:
                    AssetImage('assets/Leaders/ntrleader.jpg'),
                  ),
                  titleText: _ntrNameText,
                  subTitleText: _ntrjobText,
                  onTap: _launchUrlNtr,
                ),
                content: Text(
                  _ntrdisText,style: const TextStyle(color: Colors.red,fontWeight: FontWeight.w800,fontSize: 18,),
                ),

                buttonBar: const GFButtonBar(
                  children: <Widget>[
                    GFButton(
                    onPressed: _launchUrlNtrfb,
                    text: "Facebook",
                    icon: Icon(Icons.facebook),
                    shape: GFButtonShape.pills,
                     ),
                    GFButton(
                      onPressed: _launchUrlNtrt,
                      text: "Twitter",
                      icon: Icon(Icons.person),
                      color: Colors.lightBlueAccent,
                      shape: GFButtonShape.pills,
                    ),
                    GFButton(
                      onPressed: _launchUrlNtrin,
                      text: "Instagram",
                      icon: Icon(Icons.connect_without_contact_sharp),
                      color: Colors.deepOrange,
                      shape: GFButtonShape.pills,
                    ),
                    //SizedBox
                  ],
                ),
              ),

              //about CBN
              Container(
                child: GFCard(
                  color: Colors.yellow,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 600,
                  image: Image.asset(
                    'assets/Leaders/cbnimage.jpg',
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: GFListTile(
                    onLongPress: _launchUrlcbn,
                    avatar: const GFAvatar(
                      backgroundImage:
                      AssetImage('assets/Leaders/cbnimage.jpg'),
                    ),
                    titleText: _cbnNameText,
                    onTap: _launchUrlcbn,
                  ),
                  content: Text(_ntrdisText,style: const TextStyle(color: Colors.red,fontWeight: FontWeight.w800,fontSize: 18,),),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: _launchUrlcbn,
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                          child: const Padding(
                            padding:  EdgeInsets.all(4),
                            child: Row(
                              children:  [
                                Icon(Icons.touch_app,color: Colors.yellow,),
                                Text('Visit',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w900),)
                              ],
                            ),
                          ),
                        ),
                      ) //SizedBox
                    ],
                  ),
                ),
              ),

              //about NLK
              Container(
                child: GFCard(
                  color: Colors.yellow,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 600,
                  image: Image.asset(
                    'assets/Leaders/nlkimage.jpg',
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: GFListTile(
                    onTap: _launchUrllokesh,
                    avatar: GFAvatar(
                      backgroundImage: AssetImage('assets/Leaders/nlkimage.jpg'),
                    ),
                    titleText: _nlkNameText,
                    onLongPress: _launchUrllokesh,
                  ),
                  content: Text(_nlkdisText,style: const TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.w900,),),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: _launchUrllokesh,
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                          child: const Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: [
                                Icon(Icons.touch_app,color: Colors.yellow,),
                                Text('Visit',style: TextStyle(color: Colors.yellow,fontSize: 15,fontWeight: FontWeight.w900,),)
                              ],
                            ),
                          ),
                        ),
                      ) //SizedBox
                    ],
                  ),
                ),
              ),

              //about NBK
               Container(
                child: GFCard(
                  color: Colors.yellow,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 600,
                  image: Image.asset(
                    'assets/Leaders/nbk1.jpg',
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: GFListTile(
                    onLongPress: _launchUrlballaya,
                    avatar: const GFAvatar(
                      backgroundImage:
                      AssetImage('assets/Leaders/nbk1.jpg'),
                      backgroundColor: Colors.orange,
                    ),
                    titleText: _nbkNameText,
                    onTap: _launchUrlballaya,
                  ),
                  content:
                  Text(_nbkdisText,style: const TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.w900,),),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: _launchUrlballaya,
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                          child: const Padding(
                            padding:  EdgeInsets.all(4),
                            child: Row(
                              children:  [
                                Icon(Icons.touch_app,color: Colors.yellow,),
                                Text('Visit',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w900,fontSize: 15,),)
                              ],
                            ),
                          ),
                        ),
                      ) //SizedBox
                    ],
                  ),
                ),
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
//Ballaya Babu
Future<void> _launchUrlballaya() async {
  if (!await launchUrl(_urlballaya)) {
    throw Exception('Could not launch $_urlballaya');
  }
}

//Lokesh Nara
Future<void> _launchUrllokesh() async {
  if (!await launchUrl(_urllokesh)) {
    throw Exception('Could not launch $_urllokesh');
  }
}

//Lokesh Nara
Future<void> _launchUrlcbn() async {
  if (!await launchUrl(_urlcbn)) {
    throw Exception('Could not launch $_urlcbn');
  }
}

//NTR
Future<void> _launchUrlNtrt() async {
  if (!await launchUrl(_urlsrntrt)) {
    throw Exception('Could not launch $_urlsrntrt');
  }
}
Future<void> _launchUrlNtrfb() async {
  if (!await launchUrl(_urlsrntrfb)) {
    throw Exception('Could not launch $_urlsrntrfb');
  }
}
Future<void> _launchUrlNtrin() async {
  if (!await launchUrl(_urlsrntrin)) {
    throw Exception('Could not launch $_urlsrntrin');
  }
}