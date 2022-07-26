// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_health_efa/constant/colors.dart';
import 'package:game_health_efa/logic/function/global_preferences.dart';
import 'package:game_health_efa/logic/function/helper.dart';
import 'package:game_health_efa/presentations/widgets/button_general_seconday.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishScreenLevelC extends StatefulWidget {
  final String title;
  FinishScreenLevelC({Key? key, required this.title}) : super(key: key);

  @override
  State<FinishScreenLevelC> createState() => _FinishScreenLevelCState();
}

class _FinishScreenLevelCState extends State<FinishScreenLevelC> {
  HelperFunction helperFunction = HelperFunction();
  GlobalPreferences globalPreferences = GlobalPreferences();
  String nameUser = "", genderUser = "", birthdateUser = "";
  int pointUser = 0;

  onLoadPage() async {
    String nameUserString = await globalPreferences.getFullname();
    String birthdateUserString = await globalPreferences.getBirthdate();
    String genderUserString = await globalPreferences.getGender();
    int pointUserInt = await globalPreferences.getScoreLevelThree();

    setState(() {
      nameUser = nameUserString;
      birthdateUser = birthdateUserString;
      genderUser = genderUserString;
      pointUser = pointUserInt;
    });
  }

  @override
  void initState() {
    super.initState();
    onLoadPage();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorYellowPrimary,
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            height: size.height * 0.7,
            width: size.width,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 80),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Hore akhirnya selesai!!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: colorWhite,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset("assets/images/icon-correct.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset(
                    genderUser == "Laki-laki"
                        ? "assets/images/logo-men.png"
                        : "assets/images/logo-women.png",
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      nameUser,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: colorBlackSecondary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: colorPurplePrimary),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Image.asset("assets/images/icon-correct.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Skor akhir level 3",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: colorBlackSecondary,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "$pointUser (${((pointUser / 35) * 100).round()}%)",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: colorBlackSecondary,
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              width: size.width,
              child: Align(
                alignment: Alignment.center,
                child: ButtonGeneralSecondary(
                  onPress: () {
                    Navigator.of(context).pushNamed('/level');
                  },
                  backgroundColor: colorPurplePrimary,
                  widgetChild: Text(
                    "KE HALAMAN UTAMA",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: colorWhite,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  textColor: colorWhite,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
