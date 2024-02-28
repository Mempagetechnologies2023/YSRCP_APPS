import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BoothTen extends StatelessWidget {
  const BoothTen({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri phoneNumber = Uri.parse('tel:+8-317-675-943');
    final Uri whatsApp = Uri.parse('https://wa.me/+918317675943');
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        title: Text('Booth 10',style: TextStyle(color: Colors.white,),),
        backgroundColor: Colors.indigo[900],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 450,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Color.fromARGB(228, 140, 200, 215)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () async {
                        final Uri url = Uri(
                          scheme: 'tel',
                          path: "831 767 5943",
                        );
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('cannot launch this Url');
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.indigo[900],
                        minRadius: 35.0,
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/dsnycawxb/image/upload/v1677433666/samples/people/smiling-man.jpg'),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        launchUrl(whatsApp);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green[900],
                        minRadius: 35.0,
                        child: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Leader',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Leader booth',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'leader@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Mobile Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '9876543210',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Whats App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '9876543210',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// whatsApp() async {
//   var contact = '8317675943';

//   var android_url =
//       "whatsapp://send?phone=" + contact + "&text= Hi, I need Some help";

//   var iOS_url =
//       "http://wa.me/$contact?text=${Uri.parse("Hi , i need some help")}";

//   if (Platform.isIOS) {
//     if (await canLaunch(iOS_url)) {
//       await launch(iOS_url, forceSafariVC: false);
//     } else {
//       print("whats app not installed");
//     }
//     if (await canLaunch(android_url)) {
//       await launch(android_url);
//     } else {
//       print('whtas app not installed');
//     }
//   }
// }
