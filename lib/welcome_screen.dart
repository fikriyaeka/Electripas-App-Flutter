import 'package:electripas/main.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String _nameInput = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 420,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/head.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Center(
                        child: Text(
                      "ELECTRIPAS",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .4),
                              blurRadius: 8.0,
                              offset: Offset(0, 10))
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Insert Your Name !",
                          hintStyle: TextStyle(color: Colors.grey[500])),
                      onChanged: (String value) {
                        setState(() {
                          _nameInput = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ClipRRect(
                    child: Stack(children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(220, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, .6),
                            ])),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                            style: TextButton.styleFrom(primary: Colors.white),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen(name: _nameInput);
                              }));
                            },
                            child: const Text("NEXT")),
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
