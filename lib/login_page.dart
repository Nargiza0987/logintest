import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String log = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Page'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),
            child: Center(child: FlutterLogo(size: 100)),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              onChanged: (login) {
                log = login;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'login',
                hintText: 'enter login',
                suffixIcon: Icon(Icons.account_circle),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              onChanged: (password) {
                pass = password;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
                hintText: 'enter login',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (log == 'kulm1987@gmail.com' && pass == '1212') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
                print('correct');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Center(
                      child: Text('Error Message'),
                    ),
                  ),
                );
                print('turames');
              }
            },
            child: Text(
              'Enter',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
