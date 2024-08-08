import 'package:flutter/material.dart';
import 'package:login_app/login_page.dart';
import 'package:login_app/register_page.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light grey background
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 120),

            CircleAvatar(
              radius: 70,
              child: Image.asset(
                'assets/zyvra.jpeg', // Make sure this matches your file path
              ),
            ),
            SizedBox(height: 180),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Navigate to Register Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text('Register',style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Login Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Handle Login with Google action
              },
              icon: CircleAvatar(
                  radius:10,
                  child: Image.asset('assets/logo.jpeg')),

              label: Text('Login with Google',style: TextStyle(fontSize: 12,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
