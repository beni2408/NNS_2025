import 'package:nns_25/Welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './AppTheme.dart';
import './signuppage.dart';

class OtpVerificationPage extends StatefulWidget {
  final String namelog;
  final String emaillog;
  final String passwordlog;
  const OtpVerificationPage({super.key,
    required this.namelog,
    required this.emaillog,
    required this.passwordlog,
  });

  @override

  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final namestore = widget.namelog;
    final emailStore= widget.emaillog;
    final passwordStore = widget.passwordlog;



    return  Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

        ),

        backgroundColor: AppTheme.backgroundColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal:  screenWidth * 0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.primaryColor,
                    radius: screenWidth * 0.1,
                    child: Icon(Icons.security, color: Colors.white, size: screenWidth *0.1),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Text('Verify Your Account', textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w800,
                    ),),
                  SizedBox(height: screenHeight*0.01),
                  Text('Enter the 4-digit code sent to your email ${emailStore}. ' ,style: TextStyle(fontSize: screenWidth * 0.04, color: AppTheme.disabledTextColor),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Container(
                    width: screenWidth * 0.9,
                    alignment: Alignment.center,
                    height: screenHeight * 0.225,
                    padding: EdgeInsets.all(screenWidth * 0.06),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(screenWidth * 0.04),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: screenWidth * 0.03,
                          offset: Offset(0, screenWidth * 0.015),
                        ),
                      ],
                    ),
                    child: Column(

                      children: [
                        Row(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 1,

                                buildCounter: (
                                    BuildContext context, {
                                      int? currentLength,
                                      int? maxLength,
                                      bool? isFocused,
                                    }) => null,

                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                ],
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(

                                  // hintText: 'Enter text...',
                                  // hintStyle: TextStyle(color: Colors.grey),

                                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white, // Optional for contrast
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color:AppTheme.disabledTextColor),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: AppTheme.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                buildCounter: (
                                    BuildContext context, {
                                      int? currentLength,
                                      int? maxLength,
                                      bool? isFocused,
                                    }) => null,

                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                ],
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(

                                  // hintText: 'Enter text...',
                                  hintStyle: TextStyle(color: Colors.white ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white, // Optional for contrast
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: AppTheme.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                buildCounter: (
                                    BuildContext context, {
                                      int? currentLength,
                                      int? maxLength,
                                      bool? isFocused,
                                    }) => null,

                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                ],
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(

                                  // hintText: 'Enter text...',
                                  // hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white, // Optional for contrast
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: Colors.grey, ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: AppTheme.primaryColor),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: TextField(
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                buildCounter: (
                                    BuildContext context, {
                                      int? currentLength,
                                      int? maxLength,
                                      bool? isFocused,
                                    }) => null,

                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                ],
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(

                                  // hintText: 'Enter text...',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                  filled: true,
                                  fillColor: Colors.white, // Optional for contrast
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(screenWidth * 0.03),
                                    borderSide: BorderSide(color: AppTheme.primaryColor),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WelcomePage(loginname: namestore, loginemail: emailStore, loginpassword: passwordStore,)),
                          );

                        },
                          style: AppTheme.lightTheme.elevatedButtonTheme.style?.copyWith(
                            backgroundColor:
                            MaterialStateProperty.all(AppTheme.primaryColor),
                            minimumSize: MaterialStateProperty.all(
                                Size(double.infinity, screenHeight * 0.06)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            )),
                          ),
                          child: Text(
                            'Verify',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.045),
                          ),),
                        SizedBox(height: screenHeight * 0.02),

                      ],

                    ),


                  ),
                  SizedBox(height: screenHeight * 0.015),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't recieved the OTP?",
                          style: AppTheme.textTheme.bodyMedium),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()),
                          );
                        },
                        child:  Text('Resend OTP',
                            style: TextStyle(
                                color: AppTheme.primaryColor,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.bold
                            )),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        )

    );
  }
}
