import 'package:flutter/material.dart';
import 'package:phone_auth_project/screens/register_screen.dart';
import 'package:phone_auth_project/widget/ui_helper.dart';

class WelComeScreen extends StatefulWidget {
  const WelComeScreen({super.key});

  @override
  State<WelComeScreen> createState() => _WelComeScreenState();
}

class _WelComeScreenState extends State<WelComeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/wecome.png'),
          const Text("Let's get started",
              style: TextStyle(
                  fontSize: 24, fontFamily: 'font', color: Color(0xff1a2e35))),
          const Text('Never a better time then now to start.',
              style: TextStyle(fontSize: 14, color: Colors.black38)),
          const SizedBox(
            height: 20,
          ),
          CustomElevatedButton(
              voidCallback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
              },
              text: "Get started",
              color: const Color(0xff047f6e),
              height: 50,
              width: width,
              fontSize: 16)
        ],
      ),
    ));
  }
}
