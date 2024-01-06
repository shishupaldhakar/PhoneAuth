import 'package:flutter/material.dart';
import 'package:phone_auth_project/screens/otp_screen.dart';
import 'package:phone_auth_project/widget/ui_helper.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('assets/regsterscreen.png'),
              ),
              const Text('Registration',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff1a2e35),
                      fontFamily: 'font')),
              const Text(
                "Add your phone number. We'll send you a verification code",
                style: TextStyle(fontSize: 14, color: Colors.black38),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  cursorColor: const Color(0xff00b299),
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(15),
                        child:Text(
                          "+91 "
                          "|",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00b299)),
                        ),
                      ),
                      suffixIcon: phoneController.text.length > 9
                          ? Container(
                              margin: const EdgeInsets.all(10),
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: const Color(0xff00b299),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(Icons.done,
                                color: Colors.white,
                              ))
                          : null,
                      hintStyle: const TextStyle(color: Colors.black26),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black12)))),
              const SizedBox(
                height: 30,
              ),
              CustomElevatedButton(
                  voidCallback: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                  },
                  text: "Send OTP",
                  color: const Color(0xff047f6e),
                  height: 50,
                  width: width,
                  fontSize: 16)
            ],
          ),
        ),
      ),
    ));
  }
}
