import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TampilanLogin extends StatefulWidget {
  const TampilanLogin({super.key});

  @override
  State<TampilanLogin> createState() => _TampilanLoginState();
}

class _TampilanLoginState extends State<TampilanLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String _errorText = '';
  bool isSignIn = false;
  bool _obscurePassword = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Login' ,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/Mobile_login.png"),
              SizedBox(height: 16,),
              Text('Login Detail',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 24,),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      width: 1.0,
                      color: Colors.indigo
                    ),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off
                          :Icons.visibility,),
                  ),
                  hintText: 'Password',
                ),
                obscureText: _obscurePassword,
              ),
              SizedBox(height: 16,),
              ElevatedButton(
                  onPressed: (){},
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text('Login', style: TextStyle(fontSize: 16, color: Colors.indigo),),
                  ),
              ),
              const SizedBox(height: 24,),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Belum Punya Akun ?",
                      style: TextStyle(fontSize: 16, color: Colors.indigo),
                      children: [
                        TextSpan(
                            text: "Daftar di sini",
                            style: TextStyle(
                              color: Colors.blue,
                              // decoration: TextDecoration.underline,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = (){}
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
