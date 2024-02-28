import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _video1 = Uri.parse('https://www.youtube.com/watch?v=DoKbXHPDE9g');

final Uri _video2 = Uri.parse('https://www.youtube.com/watch?v=3f0x8aC9ayA');

final Uri _video3 = Uri.parse('https://www.youtube.com/watch?v=UNBZNFWE_1U');

final Uri _video4 = Uri.parse('https://www.youtube.com/watch?v=_Cjn_d2AvT8');

final Uri _video5 = Uri.parse('https://www.youtube.com/watch?v=SYj6FekEOPU');

final Uri _video6 = Uri.parse('https://www.youtube.com/watch?v=JfejFKgt3ZE');

final Uri _video7 = Uri.parse('https://www.youtube.com/watch?v=Tir5_aQoVak');

final Uri _video8 = Uri.parse('https://www.youtube.com/watch?v=KUqZYj60MLQ');

final Uri _video9 = Uri.parse('https://www.youtube.com/watch?v=m4jHhmxiJlk');



class YouTudeLinks extends StatefulWidget {
  const YouTudeLinks({super.key});

  @override
  State<YouTudeLinks> createState() => _YouTudeLinksState();
}

class _YouTudeLinksState extends State<YouTudeLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('Nara Chandra Babu Naidu'),
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
              child: Image.asset('assets/Social Media/socialmediaone.jpg'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo2,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/Social Media/socialmediatwo.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo3,
            child: Container(
              height: 350,
              width: 270,
              child: Image.asset('assets/Social Media/socialmediathree.jpg'),
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
              child: Image.asset('assets/Social Media/socialmediafour.jpg'),
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
              child: Image.asset('assets/Social Media/socialmediafive.jpg'),
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
              child: Image.asset('assets/Social Media/socialmediasix.jpg'),
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
              child: Image.asset('assets/Social Media/socialmediaseven.jpg'),
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
              child: Image.asset('assets/Social Media/socialmediaeight.jpg'),
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
              child: Image.asset('assets/Social Media/socialmedianine.jpg'),
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