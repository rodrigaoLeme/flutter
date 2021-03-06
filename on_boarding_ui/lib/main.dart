import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.black,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset('imgs/logo.png'),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Get your Money\nUnder Control',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Manage your expenses.\nSeamlessly.',
                style: TextStyle(color: Color(0xFF8E8E93), fontSize: 23),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 98,
              ),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF5E5CE6)),
                child: Row(
                  children: const [
                    Spacer(),
                    Text(
                      'Sign Up with Email ID',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  children: [
                    const Spacer(),
                    SizedBox(
                      height: 20,
                      width: 40,
                      child: Image.asset('imgs/google.png'),
                    ),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Text(
              //   'Sign In',
              //   style: TextStyle(color: Colors.white, fontSize: 16),
              // ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(text: 'Already have an account? '),
                    TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          //fontWeight: FontWeight.bold
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 74,
              )
            ],
          ),
        ),
      ),
    );
  }
}
