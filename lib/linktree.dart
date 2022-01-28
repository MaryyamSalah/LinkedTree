import 'dart:html';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

class linktree extends StatelessWidget {
  const linktree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          CircleAvatar(
            radius: 96 / 2,
            backgroundImage: NetworkImage(
                'https://image.shutterstock.com/image-photo/profile-picture-smiling-millennial-asian-260nw-1836020740.jpg'),
          ),
          Text('Maryyam Salah'),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                child: Text('Software Engineer / Erbil/Kurdistan'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                child: Text('Looking for a job'),
              )
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: FlatButton(
                color: Colors.purple,
                child: Text(
                  'instagram',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _launchURL;
                }),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: FlatButton(
              color: Colors.purple,
              child: Text(
                'Github',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: FlatButton(
              color: Colors.purple,
              child: Text(
                'Stackoverflow',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: FlatButton(
              color: Colors.purple,
              child: Text(
                'facebook',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.mobile_friendly,
              color: Colors.purple.shade200,
            ),
            title: new Text(
              'Contact me',
            ),
          ),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.link,
                color: Colors.purple.shade200,
              ),
              title: new Text('my website')),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.location_on,
                color: Colors.purple.shade200,
              ),
              title: new Text('location'))
        ],
      ),
    );
  }
}

void _launchURL() async {
  const url =
      'https://stackoverflow.com/questions/63625023/flutter-url-launcher-unhandled-exception-could-not-launch-youtube-url-caused-b';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: false, forceWebView: false);
  } else {
    throw 'Could not launch $url';
  }
}
