import 'package:flutter/material.dart';
import 'package:iprovidepro/main.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      alignment: Alignment.center, // This is needed
      child: Image.asset('images/logo.png',
        //Constants.ASSETS_IMAGES + "logo.png",
        fit: BoxFit.contain,
        width: 200,
      ),
    );
  }
//     return Container(
//       color: Colors.white,
//       child: Image.asset(
//           'images/logo.png',
//
//         width: 2 ,
//         height: 1,
//         fit:BoxFit.fitWidth
//       ),
//     );
//   }
// }
}