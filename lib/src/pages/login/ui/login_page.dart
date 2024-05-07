import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapi_getx/src/config/app_routes.dart';
import 'package:newsapi_getx/src/config/validators.dart';
import 'package:newsapi_getx/src/pages/home_getx/ui/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                key: const ValueKey("email_id"),
                decoration: const InputDecoration(hintText: "Enter email id"),
                validator: (val) => Validator.validateEmail(val ?? ''),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _passwordController,
                key: const ValueKey("password"),
                decoration: const InputDecoration(hintText: "Enter password"),
                validator: (val) => Validator.validatePassword(val ?? ''),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                if(_key.currentState?.validate() == true) {
                  Get.toNamed(AppRoutes.HOME_SCREEN);
                }
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
