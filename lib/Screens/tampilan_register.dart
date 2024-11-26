import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TampilanRegister extends StatefulWidget {
  const TampilanRegister({super.key});

  @override
  State<TampilanRegister> createState() => _TampilanRegisterState();
}

class _TampilanRegisterState extends State<TampilanRegister> {
  final emailController  = TextEditingController();
  final passwordController = TextEditingController();
  final NamaLengkapController = TextEditingController();
  final userNameController = TextEditingController();
  String _errorText = '';
  bool _isSignIn = false;
  bool _obscurePassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/Mobile_register.png",
                width: 450,
                height:250,
              ),
              SizedBox(height: 24,),
              Text(
                'Register Detail',
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24,),
              TextFormField(
                controller: NamaLengkapController,
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
                      color: Colors.indigo
                    ),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  hintText: 'Nama Lengkap'
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: userNameController,
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
                            color: Colors.indigo
                        ),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    hintText: 'UserName'
                ),
              ),
              SizedBox(height: 24,),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
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
                            color: Colors.indigo
                        ),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    hintText: 'email'
                ),
              ),
              SizedBox(height: 24,),
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
                            color: Colors.indigo
                        ),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off
                              :Icons.visibility,
                        ),
                    ),
                    hintText: 'Nama Lengkap'
                ),
                obscureText: _obscurePassword,
              ),
              SizedBox(height: 24,),
              ElevatedButton(
                  onPressed: (){},
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text('Register', style: TextStyle(fontSize: 16, color: Colors.indigo),),
                  ),
              ),
              SizedBox(height: 24,),
              RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Sudah Punya Akun ?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                          text: "Login Disini",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer() ..onTap = (){}
                      ),
                    ]
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
