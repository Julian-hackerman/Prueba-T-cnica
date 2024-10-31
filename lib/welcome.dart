import 'package:flutter/material.dart';
import 'white_screen.dart';

class WelcomeScreen extends StatelessWidget {
  Widget CustomDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(width: 2,
        color: Color.fromARGB(220, 126, 163, 189))
      ),
      backgroundColor: Colors.white,
      elevation: 5,
      contentPadding: EdgeInsets.all(20),
      content: SizedBox(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Ensure you drive safely and follow all traffic regulations. Avoid using this app while driving. as it can cause a serious accident.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "UniteaSans",
                height: 1.5,
              ),
              
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 5), () {
        showDialog(
          context: context,
          barrierColor: Color(0x850B0C28),
          builder: (BuildContext context) => Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomDialog(),
                  Transform.translate(
                    offset: const Offset(0, -42),
                    child: Image.asset(
                      "assets/images/alert.icon.png",
                      width: 180,
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const WhiteScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.82, 50),
                  backgroundColor: const Color.fromARGB(255, 236, 23, 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  side: BorderSide(color: Colors.red, width: 2),
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "UniteaSans",
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),
        );
      });
    });

    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/tsp-bg.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Column(
          
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Image.asset(
                    "assets/images/tsp-logo.png",
                    width: 310,
                  ),
                  Image.asset(
                    "assets/images/titles.png",
                    height: 150,
                  ),
                  Image.asset(
                    "assets/images/wersus-logo.png",
                    height: 150,
                  ),
                ],
              ),
            ),
            
            
          ],
        ),
      ]),
    );
  }
}
