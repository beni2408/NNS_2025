import 'package:flutter/material.dart';
import './AppTheme.dart';
import './Welcomepage.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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
      body: SafeArea(child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppTheme.primaryColor,
                radius: screenWidth * 0.1,
                child: Icon(Icons.key , color: Colors.white, size: screenWidth*0.1 ,),
              ),
              SizedBox(height: screenHeight * 0.03),
              Text('Forgot Password' , textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: screenHeight*0.01),
              Text('Enter your email to receive a reset link.' ,style: TextStyle(fontSize: screenWidth * 0.04, color: AppTheme.disabledTextColor),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                width: screenWidth * 0.9,
                alignment: Alignment.center,
                height: screenHeight * 0.260,
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
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email Address', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth * 0.04,
                      color: AppTheme.primaryTextColor,
                    )),
                    SizedBox(height: screenHeight * 0.01),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: screenWidth*0.035),

                        hintText: 'you@example.com',
                        prefixIcon: Icon(Icons.mail, color: AppTheme.disabledTextColor, size: 20 ),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          borderSide: BorderSide(color: AppTheme.primaryColor),
                        ),
                      ),

                    ),
                    SizedBox(height: screenHeight * 0.04),
                    ElevatedButton(onPressed: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => WelcomePage()),
                      //
                      // );

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
                        'Send Reset Link',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.045),
                      ),),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
