import 'login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) =>Login() ))

    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('lib/Assets/BW.jpg'),
              width:400 ,
            ),
            SizedBox(height: 150,),
            SpinKitFadingCube(
              color: Colors.blue,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
