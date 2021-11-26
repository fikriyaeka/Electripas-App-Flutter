// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:electripas/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class card extends StatelessWidget {
  final String SvgSrc;
  final String title;
  final Function press;
  const card({
    Key? key,
    required this.SvgSrc,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 50,
                  spreadRadius: -23,
                  color: kShadowColor),
            ],
          ),
          child: Material(
            color: const Color(0xFFE1BEE7),
            child: InkWell(
              onTap: () {
                press();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    SvgPicture.asset(
                      SvgSrc,
                      height: 70,
                    ),
                    const Spacer(),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
