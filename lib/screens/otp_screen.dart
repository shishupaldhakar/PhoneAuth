import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pinput.dart';

import '../widget/ui_helper.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff047f6e),
                    )),
              ),
              Image.asset('assets/otpscreen.png'),
              const Text("Verification",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'font',
                      color: Color(0xff1a2e35))),
              const Text('Enter the OTP send to your phone number.',
                  style: TextStyle(fontSize: 14, color: Colors.black38)),
              const SizedBox(
                height: 30,
              ),
              Pinput(
                length: 6,
                showCursor: true,
                autofocus: true,
                defaultPinTheme: PinTheme(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff00dfbf))),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                onSubmitted: (value) {
                  otpCode = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                  voidCallback: () {},
                  text: "Verify",
                  color: const Color(0xff047f6e),
                  height: 50,
                  width: width,
                  fontSize: 16),
              SizedBox(
                height: 30,
              ),
              const Text("Didn't receive any code?",
                  style: TextStyle(fontSize: 14, color: Colors.black38)),
              SizedBox(
                height: 5,
              ),
              const Text("Didn't receive any code?",
                  style: TextStyle(fontSize: 16, color: Color(0xff00b299),fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    ));
  }
}
