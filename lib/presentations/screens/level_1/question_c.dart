// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:game_health_efa/constant/colors.dart';
import 'package:game_health_efa/logic/function/global_preferences.dart';
import 'package:game_health_efa/logic/function/helper.dart';
import 'package:game_health_efa/presentations/screens/level_1/question_d.dart';
import 'package:game_health_efa/presentations/widgets/button_general.dart';
import 'package:game_health_efa/presentations/widgets/button_general_seconday.dart';
import 'package:game_health_efa/presentations/widgets/card_player.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionC extends StatefulWidget {
  final String title;
  QuestionC({Key? key, required this.title}) : super(key: key);

  @override
  State<QuestionC> createState() => _QuestionCState();
}

class _QuestionCState extends State<QuestionC> {
  HelperFunction helperFunction = HelperFunction();
  GlobalPreferences globalPreferences = GlobalPreferences();
  String nameUser = "pemain", genderUser = "Laki-laki";
  int pointUser = 0;

  launchDescriptionUrl() async {
    // Uri surveyUrlPatch = Uri(
    //     scheme: 'https', host: 'www.youtube.com', path: '/watch?v=odjUjKzVDXo');
    Uri surveyUrlPatch =
        Uri.parse('https://www.youtube.com/watch?v=odjUjKzVDXo');
    helperFunction.launchUrlExternal(surveyUrlPatch);
  }

  Future<Object> showDialogCorrect(BuildContext context, Size size) async {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          child: child,
          scale: Tween<double>(end: 1.0, begin: 0).animate(
            CurvedAnimation(
              parent: animation,
              curve: Interval(0.00, 0.50, curve: Curves.linear),
            ),
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter myState) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Dialog(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: Text(
                        "BENAR",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: colorPurplePrimary,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset('assets/images/icon-correct.png'),
                    ),
                    Center(
                      child:
                          Image.asset('assets/images/level_a/question_c.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        "Jawaban: Kondisi ketika jantung berhenti berdetak secara tiba-tiba akibat gangguan kelistrikan jantung \nHenti jantung terjadi akibat adanya gangguan pada listrik jantung sehingga jantung berhenti memompa darah ke seluruh tubuh. Kondisi ini dapat menyebabkan kerusakan otak secara permanen atau bahkan dapat menyebabkan kematian. Korban henti jantung perlu diberikan pertolongan pertama berupa Resusitasi Jantung Paru (RJP) dan kejut jantungHenti jantung terjadi akibat adanya gangguan pada listrik jantung sehingga jantung berhenti memompa darah ke seluruh tubuh. Kondisi ini dapat menyebabkan kerusakan otak secara permanen atau bahkan dapat menyebabkan kematian. Korban henti jantung perlu diberikan pertolongan pertama berupa Resusitasi Jantung Paru (RJP) dan kejut jantung.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: colorBlackSecondary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ButtonGeneralSecondary(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => QuestionD(
                                title: 'number 2',
                              ),
                            ),
                          );
                        },
                        backgroundColor: colorPurplePrimary,
                        widgetChild: Text(
                          "LANJUT",
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
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }

  Future<Object> showDialogWrong(BuildContext context, Size size) async {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          child: child,
          scale: Tween<double>(end: 1.0, begin: 0).animate(
            CurvedAnimation(
              parent: animation,
              curve: Interval(0.00, 0.50, curve: Curves.linear),
            ),
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter myState) {
          return WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Dialog(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: Text(
                        "SALAH",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: colorPurplePrimary,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset('assets/images/icon-wrong.png'),
                    ),
                    Center(
                      child:
                          Image.asset('assets/images/level_a/question_c.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Text(
                        "Jawaban: Kondisi ketika jantung berhenti berdetak secara tiba-tiba akibat gangguan kelistrikan jantung \nHenti jantung terjadi akibat adanya gangguan pada listrik jantung sehingga jantung berhenti memompa darah ke seluruh tubuh. Kondisi ini dapat menyebabkan kerusakan otak secara permanen atau bahkan dapat menyebabkan kematian. Korban henti jantung perlu diberikan pertolongan pertama berupa Resusitasi Jantung Paru (RJP) dan kejut jantungHenti jantung terjadi akibat adanya gangguan pada listrik jantung sehingga jantung berhenti memompa darah ke seluruh tubuh. Kondisi ini dapat menyebabkan kerusakan otak secara permanen atau bahkan dapat menyebabkan kematian. Korban henti jantung perlu diberikan pertolongan pertama berupa Resusitasi Jantung Paru (RJP) dan kejut jantung.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: colorBlackSecondary,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: ButtonGeneralSecondary(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => QuestionD(
                                title: 'number 2',
                              ),
                            ),
                          );
                        },
                        backgroundColor: colorPurplePrimary,
                        widgetChild: Text(
                          "LANJUT",
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
                  ],
                ),
              ),
            ),
          );
        });
      },
    );
  }

  onLoadPage() async {
    String nameUserSave = await globalPreferences.getFullname();
    String genderUserSave = await globalPreferences.getGender();
    int pointUserInt = await globalPreferences.getScoreLevelOne();
    setState(() {
      nameUser = nameUserSave;
      genderUser = genderUserSave;
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
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: colorYellowPrimary,
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(minHeight: size.height),
                    width: size.width,
                    margin: EdgeInsets.only(top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 80),
                          child: Image.asset(
                              'assets/images/level_a/question_c.png',
                              height: 250,
                              fit: BoxFit.contain),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 60,
              child: CardPlayer(
                size: size,
                genderUser: genderUser,
                nameUser: nameUser,
                skorUser: "Skor : $pointUser",
                showTimer: false,
                widgetTimer: SizedBox(
                  height: 1,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                margin: EdgeInsets.only(),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "3.	Apakah yang di maksud dengan henti jantung / cardiac arrest?",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: colorBlackPrimary,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: ButtonGeneralSecondary(
                        onPress: () {
                          helperFunction.savePointSpesificLevel("1", 5);
                          showDialogCorrect(context, size);
                        },
                        backgroundColor: colorPurplePrimary,
                        widgetChild: Text(
                          "Kondisi ketika jantung berhenti berdetak secara tiba-tiba akibat gangguan kelistrikan jantung",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: colorWhite,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        textColor: colorWhite,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: ButtonGeneralSecondary(
                        onPress: () {
                          showDialogWrong(context, size);
                        },
                        backgroundColor: colorPurplePrimary,
                        widgetChild: Text(
                          "Kondisi ketika arteri koroner atau pembuluh darah jantung tersumbat oleh timbunan lemak",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: colorWhite,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        textColor: colorWhite,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: ButtonGeneralSecondary(
                        onPress: () {
                          showDialogWrong(context, size);
                        },
                        backgroundColor: colorPurplePrimary,
                        widgetChild: Text(
                          "kondisi yang terjadi ketika persediaan darah ke otak terganggu atau berkurang akibat penyumbatan atau pecahnya pembuluh darah di otak.",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: colorWhite,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        textColor: colorWhite,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: ButtonGeneralSecondary(
                        onPress: () {
                          showDialogWrong(context, size);
                        },
                        backgroundColor: colorPurplePrimary,
                        widgetChild: Text(
                          "Kelainan pada tubuh yang memicu nyeri, panas, merah, bengkak.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: colorWhite,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        textColor: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
