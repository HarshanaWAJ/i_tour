import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: const BoxDecoration(
                      color: Color(0xFF3DB2FF),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "lib/assets/bgpic.png",
                        scale: 0.8,
                      ),
                    ),
                  ),
                  //Must Add APP NAME In padding
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  decoration: const BoxDecoration(
                    color: Color(0xFF3DB2FF),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "Welcome To SMART Travellig!",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2.0,
                          wordSpacing: 5.0,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Opacity(
                          opacity: 0.6,
                          child: Text(
                            "Make your journy more easier with others. Be SMART!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Material(
                        color: const Color(0xFF3DB2FF),
                        borderRadius: BorderRadius.circular(20.0),
                        child: InkWell(
                          //Function
                          onTap: () {
                            Navigator.of(context).pushNamed('/login');
                            debugPrint("Tapped on GET STARTED");
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 80.0,
                            ),
                            child: (const Text(
                              "Get Start",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const Opacity(
                        opacity: 0.4,
                        child: Text(
                          "Powered by JH Solutions",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
