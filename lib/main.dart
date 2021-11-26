import 'package:electripas/constants.dart';
import 'package:electripas/detail_screen.dart';
import 'package:electripas/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:electripas/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ELECTRIPAS',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String name;
  const HomeScreen({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: const Color(0xFFD1C4E9),
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFFB39DDB),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Hello, Welcome \n$name",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("assets/images/home.png"),
                      height: 230,
                      width: 250,
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .88,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 25,
                      children: <Widget>[
                        card(
                          SvgSrc: 'assets/icons/livingroom.svg',
                          title: 'Living Room ',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const detailScreen(
                                category: 'Area Living Room',
                              );
                            }));
                          },
                        ),
                        card(
                          SvgSrc: 'assets/icons/room.svg',
                          title: 'Bedroom',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const detailScreen(
                                  category: 'Area Bedroom');
                            }));
                          },
                        ),
                        card(
                          SvgSrc: 'assets/icons/dua.svg',
                          title: 'Kitchen',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const detailScreen(
                                  category: 'Area Kitchen');
                            }));
                          },
                        ),
                        card(
                          SvgSrc: 'assets/icons/tiga.svg',
                          title: 'Bathroom',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const detailScreen(
                                  category: 'Area Bathroom');
                            }));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
