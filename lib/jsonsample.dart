import 'package:flutter/material.dart';
import './AppTheme.dart';
import './signuppage.dart';
import './forgotpassword.dart';
import './jsonsampleclass.dart';
class jsonsample extends StatefulWidget {
  const jsonsample({super.key});

  @override
  State<jsonsample> createState() => _jsonsampleState();
}

class _jsonsampleState extends State<jsonsample> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();
    // final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();


    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(

        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor,
                  radius: screenWidth * 0.1,
                  child: Icon(Icons.handshake, color: Colors.white, size: screenWidth * 0.1),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  'Welcome to jsonsample!',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Login to your account to continue',
                  style: TextStyle(fontSize: screenWidth * 0.04, color: AppTheme.disabledTextColor),
                ),
                SizedBox(height: screenHeight * 0.03),
                Container(

                  alignment: Alignment.center,
                  height: screenHeight * 0.775,
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
                    spacing: 2,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Email Address',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.04,
                            color: AppTheme.primaryTextColor,
                          )),
                      SizedBox(height: screenHeight * 0.008),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),

                          hintText:  'you@example.com',
                          prefixIcon: Icon(Icons.email,
                              color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),


                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.015),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  labelText: 'Email'
                              ),
                              validator: (value) {
                                if (value ==null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: 'Password'),
                              validator: (value) {
                                if (value == null || value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Password',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth * 0.04,
                                color: AppTheme.primaryTextColor,
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Forgotpassword()),
                              );
                            },
                            child:  Text('Forgot Password?',
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontSize: screenWidth * 0.035,
                                )),
                          ),
                        ],
                      ),
                      TextField(

                        obscureText: true,


                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),

                          hintText:  '******',
                          prefixIcon: Icon(Icons.lock,
                              color: AppTheme.disabledTextColor, size: 20),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(screenWidth * 0.03),
                            borderSide: BorderSide(color: AppTheme.primaryColor),


                          ),
                        ),



                      ),

                      SizedBox(height: screenHeight * 0.03),


                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Step 1: Collect the data from controllers
                            // String name = nameController.text;
                            String email = emailController.text;
                            String password = passwordController.text;

                            // Step 2: Create a Dart object
                            UserData user = UserData(

                              email: email,
                              password: password,
                            );

                            // print('Name: $name');
                            // print('User Object: ${user.toJson()}');

                            // Step 3: Convert to JSON if needed
                            Map<String, dynamic> jsonData = user.toJson();

                            // Step 4: Use this data (e.g., send to backend or print)
                            print("User JSON: $jsonData");
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Forgotpassword()),
                            );
                          }


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
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.045),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      /// --- Google Sign In Button ---
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
                ),

                SizedBox(height: screenHeight * 0.015),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: AppTheme.textTheme.bodyMedium),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child:  Text('Sign Up',
                          style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontSize: screenWidth * 0.035,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

