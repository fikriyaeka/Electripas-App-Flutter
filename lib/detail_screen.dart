import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:electripas/constants.dart';

// ignore: camel_case_types
class detailScreen extends StatelessWidget {
  final String category;
  const detailScreen({
    Key? key,
    required this.category,
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
              color: kBlueLightColor,
              borderRadius: BorderRadius.circular(17),
              image: const DecorationImage(
                image: AssetImage("assets/images/draw.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage("assets/images/electric.png"),
              height: 480,
              width: 210,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    Text(
                      category,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Enjoy Your Live",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 9),
                    SizedBox(
                      width: size.width * .6,
                      child: const Text(
                        "Live happier and more effectively using smart home devices.Electripas provides complete features that \nmake your life easier.",
                      ),
                    ),
                    const SizedBox(height: 135),
                    Text(
                      "Device Electronic",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const device(
                      img: 'assets/icons/lamp.svg',
                      desc: 'Lamp',
                      detail: 'Ceiling Lighting',
                    ),
                    const device(
                      img: 'assets/icons/ac.svg',
                      desc: 'Air Conditioner',
                      detail: 'Room Temperature Setting',
                    ),
                    const device(
                      img: 'assets/icons/sound.svg',
                      desc: 'Sound',
                      detail: 'Select Play Sound',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class device extends StatelessWidget {
  final String img;
  final String desc;
  final String detail;
  const device({
    Key? key,
    required this.img,
    required this.desc,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
        color: const Color(0xfffff176),
        borderRadius: BorderRadius.circular(13),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23,
            spreadRadius: -13,
            color: kShadowColor,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            img,
            height: 50,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  desc,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(detail)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Lock.svg"),
          ),
        ],
      ),
    );
  }
}
