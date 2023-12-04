import 'package:flutter/material.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route route() {
    return MaterialPageRoute(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              const Positioned.fill(
                  child:Align(
                    alignment: Alignment.center,
                    child: Text(
                        "CONCIERGE",
                        style: TextStyle(
                            fontSize: 28,
                            // fontFamily: AppTheme.fontName,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  )
              ),
              Positioned.fill(
                  child:Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "POWERED BY",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              // fontFamily: AppTheme.fontName,
                            ),
                          ),
                          Image.asset("assets/images/login/roilogowhite.png")
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
}
