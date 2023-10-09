import 'package:flutter/material.dart';
import 'package:login_page_1/screen/home.dart';

class ScreenLogin extends StatefulWidget {
  const  ScreenLogin ({Key?key}):super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordControllere = TextEditingController();

  bool _isDataMatched = true;

  final _formkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar:AppBar(
          
        ),
        body: Padding(
          padding:const EdgeInsets.all(15.0),
        child: Form(
        key:_formkey,
          child: Center(
            child: Column(
            
              crossAxisAlignment:CrossAxisAlignment.center,
            children:[
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10),          // child:
               TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Username',
                ), 
                validator: (value){
                  //  if(_isDataMatched)
                  //  {
                  //   return null;
                  //  }else{
                  //   return 'error';
                  //  }
                  if(value==null||value.isEmpty)
                  {
                    return 'please enter username';
                  }else{
                    return null;
                  }
                },
              ),
            const SizedBox( height: 20),
              TextFormField(
                controller: _passwordControllere,
                obscureText: true,
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'password',
                ),
                validator: (value){
                  //  if(_isDataMatched)
                  //  {
                  //   return null;
                  //  }else{
                  //   return 'error';
                  //  }
                  if(value==null||value.isEmpty)
                  {
                    return 'please enter password';
                  }else{
                    return null;
              
                  }
                },
              ),
               const SizedBox( height: 20),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible:!_isDataMatched,
                    child: Text(
                      'Username password doesnot match',
                      style: TextStyle(
                      color:Colors.red),
                              ),
                  ),
                    
                  ElevatedButton.icon(
                    onPressed: (){
                      if(_formkey.currentState!.validate()) {
                     checkLogin(context);
              
                      }else{
                        print('data empty');
                      }
                      // checkLogin(context);
                    },
                   icon:Icon(Icons.check), 
                   label:Text('Login'), 
                   ),
                ],
             ),
             ], 
            ),
          ),
        ),  
        ),
       ),
    ); 
  }
  void checkLogin(BuildContext ctx){
    final _username=_usernameController.text;
    final _password=_passwordControllere.text;
    if(_username=="akhsa"&&_password=="12345") {
    print('Username pass match');
    
      //goto home
     Navigator.of(ctx)
     .pushReplacement(MaterialPageRoute(builder:(ctx)=> ScreenHome()));

    }else{
      print('Username pass doesnot match');
      
      final _ErrorMessage='Username password doesnot match';
      //snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
        margin: EdgeInsets.all(10),
        content:Text(_ErrorMessage),
        duration:Duration(seconds: 5),
        ),
      );

      //Alert Dialog
      //showDialog(context: ctx,
      //  builder: (ctx1){
      //   return AlertDialog(
      //     title: Text('Error'),
      //     content: Text(_ErrorMessage),
      //     actions: [
      //       TextButton(onPressed: (){
      //         Navigator.of(ctx1).pop();
      //       }, 
      //       child: Text('Close'),
      //       ),
      //     ],
      //   );
      // });
      // setState(() {
      //   _isDataMatched=false;
      // });
      // //show Text
    }
  }
}