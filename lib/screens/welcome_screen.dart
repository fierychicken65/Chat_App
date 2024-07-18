
import 'package:chat_application/screens/login_screen.dart';
import 'package:chat_application/screens/registration_screen.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller ;
  late Animation animation;
  late Animation colorAnimation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync:this,
      upperBound: 1,
    );
    colorAnimation = ColorTween(begin: Colors.black,end: Colors.teal).animate(controller);
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addStatusListener((status){
      print(status);

    });
    controller.addListener((){
      setState(() {
      });
      print(animation.value);
    });
    
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorAnimation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: animation.value*80,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                const Text(
                  'GIGA CHAT',
                  style:TextStyle(
                    fontSize:  45 ,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Hero(
              tag: 'login',
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child:const  Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'register',
              child: Padding(
                padding:const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child:const Text(
                      'Register',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
