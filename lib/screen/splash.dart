import 'package:flutter/material.dart';
import 'package:login_page_1/screen/login.dart';
  
class screensplash extends StatefulWidget {
  const screensplash({Key?key}):super(key: key);

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {

@override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child:Image.asset('assets/images/flower.png',
      height:300,)
       ),
      );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void> gotoLogin() async{
   await Future.delayed(Duration(seconds: 3));
   Navigator.of(context).pushReplacement(
    MaterialPageRoute(
    builder: (ctx) => ScreenLogin(),
    ),
     );
  }
   }
