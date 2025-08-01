import 'package:flutter/material.dart';
import './AppTheme.dart';
import './otp_verifiation_page.dart';
import './user.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override

  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final  nameData = TextEditingController();
    final  emailData = TextEditingController();
    final   passwordData = TextEditingController();

    @override

    void initState() {
      super.initState();
      nameData.text = "Jascar";
      // Initialize controllers here if you need to set initial text
      // For example:
      // nameData.text = "Initial Name";
    }
    @override
    void dispose() {

      nameData.dispose();
      emailData.dispose();
      passwordData.dispose();
      super.dispose();
    }
    void UserDatacollect(){
      User newUser = User(
        name: nameData.text,
        email: emailData.text,
        password: passwordData.text,

      );

    }

    void createUserAndNavigate() {
      final String name = nameData.text;
      final String email = emailData.text;
      final String password = passwordData.text;

      if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OtpVerificationPage(namelog: name, emaillog: email, passwordlog: password)


          ),
        );
      }
    }
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
                  child: Icon(Icons.person, color: Colors.white, size: screenWidth *0.1),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text('Create Your effortive Account', textAlign: TextAlign.justify,
                  style: TextStyle(

                    fontSize: screenWidth * 0.06,


                    fontWeight: FontWeight.w800,
                  ),),

                SizedBox(height: screenHeight*0.01),
                Text('Join our community today!' ,style: TextStyle(fontSize: screenWidth * 0.04, color: AppTheme.disabledTextColor),
                ),
                SizedBox(height: screenHeight * 0.03),
                Container(

                  alignment: Alignment.center,
                  height: screenHeight * 0.750,
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
                    // spacing: 0.5,
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Full Name', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04,
                        color: AppTheme.primaryTextColor,
                      )),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        controller: nameData,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: screenWidth*0.035),

                          hintText: 'John Doe',
                          prefixIcon: Icon(Icons.person, color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),
                          ),
                        ),

                      ),

                      SizedBox(height: screenHeight * 0.045),
                      Text('Email Address', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04,
                        color: AppTheme.primaryTextColor,
                      )),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        controller: emailData,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: screenWidth*0.035),

                          hintText: 'you@example.com',
                          prefixIcon: Icon(Icons.mail, color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),
                          ),
                        ),

                      ),
                      SizedBox(height: screenHeight * 0.045),
                      Text('Password', style: TextStyle(

                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04,
                        color: AppTheme.primaryTextColor,
                      )),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        controller: passwordData,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: screenWidth*0.035),

                          hintText: 'you@example.com',
                          prefixIcon: Icon(Icons.lock, color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),
                          ),
                        ),

                      ),
                      SizedBox(height: screenHeight * 0.045),
                      Row(
                        spacing: 0.2,


                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            activeColor: AppTheme.errorColor, // Color of the checkbox fill when checked
                            checkColor: Colors.white, // Color of the check icon
                          ),
                          Expanded( // ensures text wraps to the next line
                            child: RichText(
                              text: TextSpan(
                                text: 'I agree to the ',
                                style: TextStyle(color: Colors.black87),
                                children: [
                                  TextSpan(
                                    children: [],
                                    text: 'Privacy Policy',
                                    style: TextStyle(color: AppTheme.primaryColor),
                                    // Add gesture recognizer in future -
                                    // for recognizer: TapGestureRecognizer()
                                    //                     ..onTap = () {
                                    //                       Navigator.push(
                                    //                         context,
                                    //                         MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                                    //                       );
                                    //                     },
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                  TextSpan(
                                    text: 'Terms of Use',
                                    style: TextStyle(color: AppTheme.primaryColor),
                                    // Add gesture recognizer if needed
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      ElevatedButton(onPressed:createUserAndNavigate,
                        style: AppTheme.lightTheme.elevatedButtonTheme.style?.copyWith(
                          backgroundColor:
                          MaterialStateProperty.all(AppTheme.primaryColor),
                          minimumSize: MaterialStateProperty.all(
                              Size(double.infinity, screenHeight * 0.06)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          )), //Sign up button
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.045),
                        ),),
                      SizedBox(height: screenHeight * 0.02),


                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.g_mobiledata,
                            size: screenWidth * 0.08, color: Colors.black),
                        label: Text('Sign in with Google',
                            style: TextStyle(
                                fontSize: screenWidth * 0.045, color: Colors.black)),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, screenHeight * 0.06),
                          side: BorderSide(color: Colors.grey.shade300),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),

                    ],

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
