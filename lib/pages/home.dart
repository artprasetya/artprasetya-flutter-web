import 'package:artprasetya_flutter_web/widgets/centered_view.dart';
import 'package:artprasetya_flutter_web/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: Colors.black,
      body: CenteredView(
        child: Column(
          children: [
            NavBar(),
            buildContent(deviceType),
          ],
        ),
      ),
    );
  }

  Widget buildContent(DeviceScreenType deviceType) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'ARE YOU READY TO ROCK 2021?',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: deviceType == DeviceScreenType.mobile ? 14 : 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
