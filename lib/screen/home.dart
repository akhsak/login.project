
import 'package:flutter/material.dart';
import 'package:login_page_1/screen/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key?key}): super (key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(onPressed:(){
            signout(context);
          },
           icon: Icon(Icons.exit_to_app)),

        ],
      ),
      body:SafeArea(child: Center(child: Text('Home'),
      ),
      ),
      );
     
  }
        signout(BuildContext ctx){ 
          Navigator.of(ctx).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx1)=>ScreenLogin()), (route) => false);

        }

}