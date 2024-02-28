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

//
final Uri _urlfacebook1 = Uri.parse(
    'https://www.facebook.com/100044111842668/posts/949193586561027/?mibextid=rS40aB7S9Ucbxw6v');

final Uri _urlfacebook2 = Uri.parse(
    'https://www.facebook.com/100044111842668/posts/948419926638393/?mibextid=rS40aB7S9Ucbxw6v');

final Uri _urlfacebook3 = Uri.parse(
    'https://www.facebook.com/100044111842668/posts/946673860146333/?mibextid=rS40aB7S9Ucbxw6v');


final Uri _urlinstagram1 = Uri.parse(
    'https://www.instagram.com/p/C01r9YDPlOx/?igshid=NTYzOWQzNmJjMA%3D%3D');

final Uri _urlinstagram2 = Uri.parse(
    'https://www.instagram.com/p/C0y8-0RvVte/?igshid=NTYzOWQzNmJjMA%3D%3D');

final Uri _urlinstagram3 = Uri.parse(
    'https://www.instagram.com/p/C0bzNlKvEkS/?igshid=NTYzOWQzNmJjMA%3D%3D');


final Uri _urltwitter1 =
Uri.parse('https://twitter.com/JaiTDP/status/1719227667533500810?s=20');

final Uri _urltwitter2 =
Uri.parse('https://twitter.com/JaiTDP/status/1700870168321433645?s=20');

final Uri _urltwitter3 = Uri.parse(
    'https://twitter.com/JaiTDP/status/1735325090575945816?s=20');




class SocialMediaPageMain extends StatelessWidget {
  const SocialMediaPageMain({super.key});

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
      home: SocialMediaPage(),
    );
  }
}


class SocialMediaPage extends StatefulWidget {
  const SocialMediaPage({super.key});

  @override
  State<SocialMediaPage> createState() => _SocialMediaPageState();
}

class _SocialMediaPageState extends State<SocialMediaPage> {
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
    });
  }

  void _updateGreetingText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _greetingText = 'Hello, World! Social Media Page';
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
        backgroundColor: Colors.yellow[300],
        appBar: AppBar(
          backgroundColor: Colors.yellow[500],
          title: Row(
            children: [
              SizedBox(width: 8),
              Text(
                _appTitle,
                style: TextStyle(fontSize: 20,color: Colors.red[900],fontWeight: FontWeight.w900),
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
        body: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
          child: Column(
            children: [
              //Facebook Social Media
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                        "assets/Social Media/socialmediafacebookone.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    // crossAxisAlignment:
                                    // CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                         const SizedBox(
                            height: 8,
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  height: 250,
                                  child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook1,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediafacebookone.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook2,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediafacebooktwo.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook3,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediafacebookthree.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                height: 0,
                              ),
                              Container(
                                height: 10,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 3,
                                margin: EdgeInsets.symmetric(horizontal: 1),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 15,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ],
                          ),
                          Container(
                            height: 3,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),

                    //instagrm social media
                    Container(
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                        "assets/Social Media/socialmediainstaone.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Instagram",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin:  EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  height: 250.0,
                                  child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram1,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediainstaone.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram2,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediainstatwo.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram3,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediainstathree.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  )),
                              const SizedBox(
                                height: 0,
                              ),
                              Container(
                                height: 15,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Container(
                                height: 3,
                                margin: EdgeInsets.symmetric(horizontal: 1),
                              ),
                              Container(
                                height: 15,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ],
                          ),
                          Container(
                            height: 15,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(
                            height: 3,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                          ),
                          Container(
                            height: 15,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ],
                      ),
                    ),

                    //twitter social media
                    Container(
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                        "assets/Social Media/socialmediatwitterone.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Twitter",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const Icon(Icons.more_vert)
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  height: 250.0,
                                  child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter1,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediatwitterone.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter2,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediatwittertwo.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter3,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.red,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/Social Media/socialmediatwitterthree.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            height: 3,
                            color: Colors.black,
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
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


Future<void> _launchUrlfacebook1() async {
  if (!await launchUrl(_urlfacebook1)) {
    throw Exception('Could not launch $_urlfacebook1');
  }
}

Future<void> _launchUrlfacebook2() async {
  if (!await launchUrl(_urlfacebook2)) {
    throw Exception('Could not launch $_urlfacebook2');
  }
}

Future<void> _launchUrlfacebook3() async {
  if (!await launchUrl(_urlfacebook3)) {
    throw Exception('Could not launch $_urlfacebook3');
  }
}


Future<void> _launchUrlinstagram1() async {
  if (!await launchUrl(_urlinstagram1)) {
    throw Exception('Could not launch $_urlinstagram1');
  }
}

Future<void> _launchUrlinstagram2() async {
  if (!await launchUrl(_urlinstagram2)) {
    throw Exception('Could not launch $_urlinstagram2');
  }
}

Future<void> _launchUrlinstagram3() async {
  if (!await launchUrl(_urlinstagram3)) {
    throw Exception('Could not launch $_urlinstagram3');
  }
}




Future<void> _launchUrltwitter1() async {
  if (!await launchUrl(_urltwitter1)) {
    throw Exception('Could not launch $_urltwitter1');
  }
}

Future<void> _launchUrltwitter2() async {
  if (!await launchUrl(_urltwitter2)) {
    throw Exception('Could not launch $_urltwitter2');
  }
}

Future<void> _launchUrltwitter3() async {
  if (!await launchUrl(_urltwitter3)) {
    throw Exception('Could not launch $_urltwitter3');
  }
}

