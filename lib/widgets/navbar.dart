import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: buildNavbarTabletDesktop(),
      mobile: buildNavbarMobile(),
    );
  }

  Widget buildNavbarMobile() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: _launchURL,
            child: Text(
              'ARTPRASETYA',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavbarTabletDesktop() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: _launchURL,
            child: Text(
              'ARTPRASETYA',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    
    const url = 'https://www.linkedin.com/in/artprasetya/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
