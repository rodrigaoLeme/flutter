import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: const BackButton(),
      //   elevation: 0,
      // ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight, end: Alignment.bottomLeft,
                // #EE7363
                // #E94978
                colors: [Color(0xFFEE7363), Color(0xFFE94978)])),
        child: SizedBox(
            width: double.infinity,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              SizedBox(height: 150, child: Image.asset('imgs/tinder_logo.png')),
              SizedBox(
                height: 40,
              ),
              // const Text(
              //   'By tapping  Create Account or Sign In you agree to Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
              //   style: TextStyle(color: Colors.white),
              //   textAlign: TextAlign.center,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: [
                        TextSpan(
                            text:
                                'By tapping  Create Account or Sign In you agree to '),
                        TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: '. Learn how we process your data in our '),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(text: ' and '),
                        TextSpan(
                            text: 'Cookies Policy',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    )),
              ),
              const SizedBox(height: 30),
              CustomButton(
                icon: const Icon(Icons.apple),
                text: Text('Sign In With Apple'.toUpperCase()),
              ),
              const SizedBox(height: 10),
              CustomButton(
                  icon: const Icon(Icons.facebook),
                  text: Text('Sign In With Facebook'.toUpperCase())),
              const SizedBox(height: 10),
              CustomButton(
                  icon: const Icon(Icons.messenger),
                  text: Text('Sign In With Phone Number'.toUpperCase())),
              const SizedBox(height: 30),
              const Text(
                'Trouble Singin In?',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 30)
            ])),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 5),
      child: const Icon(
        Icons.chevron_left_rounded,
        size: 40,
        color: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
  //Size get preferredSize => const Size.fromHeight(80);
}

class CustomButton extends StatelessWidget {
  final Widget icon;
  final Widget text;

  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.white),
      child: Theme(
        data: ThemeData(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1.8),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
              icon,
              // Icon(
              //   Icons.access_alarm,
              //   size: 25,
              //   color: Colors.white,
              // ),
              Spacer(),
              text,
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
