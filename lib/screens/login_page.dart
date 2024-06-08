import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login-background/bg-11.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 50),
                  Text(
                    'E-Library',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'cursive',
                    ),
                  ),
                  Text(
                    'SMAK FRATERAN MAUMERE',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'fantasy',
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 10), // Pisahkan antara input username dan password
                          Divider(),
                          SizedBox(height: 10), // Pisahkan antara input username dan password
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock),
                            ),
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Langsung navigasi ke DashboardPage
                      Navigator.pushReplacementNamed(context, '/dashboard');
                    },
                    icon: Icon(Icons.login), // Tambahkan ikon login
                    label: Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Warna teks putih
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Login With',
                    style: TextStyle(color: Colors.white, fontFamily: 'fantasy'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSocialLoginButton(
                        icon: FontAwesomeIcons.google,
                        color: Colors.red,
                        onPressed: () {
                          // Implement Google login
                        },
                      ),
                      SizedBox(width: 20),
                      buildSocialLoginButton(
                        icon: FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        onPressed: () {
                          // Implement Facebook login
                        },
                      ),
                      SizedBox(width: 20),
                      buildSocialLoginButton(
                        icon: FontAwesomeIcons.instagram,
                        color: Colors.purple,
                        onPressed: () {
                          // Implement Instagram login
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 37),
                  Text(
                    'Copyright © StevenCodeLab - ${DateTime.now().year}',
                    style: TextStyle(color: Colors.white, fontFamily: 'fantasy'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSocialLoginButton({
    required IconData icon,
    required Color color,
    required Function() onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color.withOpacity(0.2),
        ),
        child: Icon(
          icon,
          color: color,
          size: 32,
        ),
      ),
    );
  }
}
