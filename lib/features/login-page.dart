import 'package:flutter/material.dart';
import 'package:flutter_application_1/assits/icons/icons.dart';
import 'package:flutter_application_1/assits/imports/app_import.dart';
import 'package:flutter_application_1/features/home-page.dart';
import 'package:flutter_application_1/features/signup-page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      appBar: AppBar(
        title: Text(
          AppStrings.loginScreenWelcomeText,
          style: TextStyle(color: AppColors.blackApp),
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * (2 / 3),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25),
              bottom: Radius.circular(10),
            ),
          ),

          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.loginScreenEnterYourLogInfo),
                    SizedBox(height: 15),

                    // Username
                    AppInputs.textForm(
                      label: "Enter ur phone num ",
                      icon: AppIcons.phone,
                      controller: phoneController,
                      validator: (value) => (value == null || value.isEmpty)
                          ? "Username is required"
                          : null,
                    ),
                    SizedBox(height: 25),
                    // Password
                    AppInputs.textForm(
                      isPassword: true,
                      label: "Password",
                      icon: AppIcons.lock,
                      controller: passwordController,
                      validator: (value) => (value == null || value.isEmpty)
                          ? "Password is required"
                          : null,
                    ),
                    SizedBox(height: 30),
                    Text(AppStrings.loginScreenForgetPassowrd),
                    SizedBox(height: 25),

                    //
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      },
                      child: Text('Login'),
                    ),
                    SizedBox(height: 25),

                    // OR text
                    Text(AppStrings.loginScreenDontHaveAccount),
                    SizedBox(height: 25),

                    SizedBox(height: 10),

                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(AppStrings.loginScreenSignUp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
