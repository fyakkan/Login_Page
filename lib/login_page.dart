import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  late String _password;

  void _toggle(){
    setState(() {
      _obscureText=!_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.phone_android,
              size: 100,
            ),

            const Text(
              'Hello Again!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Welcome Back, you \'ve been missed!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),

            // email textfield

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                            _obscureText ? Icons.visibility : Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        ),
                      ),

                    ),
                  ),
                ),
              ),


            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text('Not a member?',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  // Text
                  // 'Register now',
                  // style: TextStyle(
                  //     color: Colors.blue, fontWeight: FontWeight.bold),
                  style: TextButton.styleFrom(
                    primary: Colors.blue,

                    textStyle:  const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('Register now'),


                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
