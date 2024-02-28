import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _video1 = Uri.parse('https://youtu.be/jOlVdKGF_-g?si=duosjFQC3YfX7SJv');

final Uri _video2 = Uri.parse('https://youtu.be/-hnV-aUBWYQ?si=5CL5OmtI5jupOYL2');

final Uri _video3 = Uri.parse('https://youtu.be/eWGMXR2WTKA?si=TqZWj3EcurJkES5X');

final Uri _video4 = Uri.parse('https://youtu.be/BhUyo30s53Y?si=anGyO8BUGZ71Zz9f');

final Uri _video5 = Uri.parse('https://youtu.be/cAQYFiEGCc4?si=g7rzoXFmAOSowD5D');

final Uri _video6 = Uri.parse('https://youtu.be/FxoCtSkU_0c?si=RHLOUJlvx-kDRbjq');

final Uri _video7 = Uri.parse('https://youtu.be/KT1jYuVr4yc?si=7jIQ6mkOIqcaV2dW');

final Uri _video8 = Uri.parse('https://youtu.be/CcABYFTbprQ?si=5vOvavgvFQXqS0zD');

final Uri _video9 = Uri.parse('https://www.youtube.com/watch?v=b1p0K09vpSU');



class YouTudeLinks extends StatefulWidget {
  const YouTudeLinks({super.key});

  @override
  State<YouTudeLinks> createState() => _YouTudeLinksState();
}

class _YouTudeLinksState extends State<YouTudeLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Y S Jagan Mohan Reddy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,),),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo1,
            child: Container(
              height: 450,
              width: 640,
              child: Image.asset('assets/Youtube/link1.jpg'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo2,
            child: Container(
              height: 350,
              width: 700,
              child: Image.asset('assets/Youtube/link3.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo3,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link4.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo4,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link5.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo5,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link6.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo6,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link7.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo7,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link8.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo8,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link9.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo9,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Youtube/link10.jpg'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrlvideo1() async {
  if (!await launchUrl(_video1)) {
    throw Exception('Could not launch $_video1');
  }
}

Future<void> _launchUrlvideo2() async {
  if (!await launchUrl(_video2)) {
    throw Exception('Could not launch $_video2');
  }
}

Future<void> _launchUrlvideo3() async {
  if (!await launchUrl(_video3)) {
    throw Exception('Could not launch $_video3');
  }
}
Future<void> _launchUrlvideo4() async {
  if (!await launchUrl(_video4)) {
    throw Exception('Could not launch $_video4');
  }
}
Future<void> _launchUrlvideo5() async {
  if (!await launchUrl(_video5)) {
    throw Exception('Could not launch $_video5');
  }
}
Future<void> _launchUrlvideo6() async {
  if (!await launchUrl(_video6)) {
    throw Exception('Could not launch $_video6');
  }
}
Future<void> _launchUrlvideo7() async {
  if (!await launchUrl(_video7)) {
    throw Exception('Could not launch $_video7');
  }
}
Future<void> _launchUrlvideo8() async {
  if (!await launchUrl(_video8)) {
    throw Exception('Could not launch $_video8');
  }
}
Future<void> _launchUrlvideo9() async {
  if (!await launchUrl(_video9)) {
    throw Exception('Could not launch $_video9');
  }
}