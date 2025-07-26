import 'package:flutter_application_1/assits/icons/icons.dart';
import 'package:flutter_application_1/assits/imports/app_import.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for input fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _comfirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.signUpScreenSignUp,
          style: TextStyle(color: AppColors.blackApp),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.signUpScreenCreatAcount),
                SizedBox(height: 15),

                // Username
                AppInputs.textForm(
                  label: "Username",
                  icon: AppIcons.username,
                  controller: _nameController,
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Username is required"
                      : null,
                ),
                SizedBox(height: 25),

                // Email
                AppInputs.textForm(
                  label: "Email",
                  icon: AppIcons.email,
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field cannot be empty";
                    }
                    if (!value.contains("@gmail.com")) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25),

                // Password
                AppInputs.textForm(
                  isPassword: true,
                  label: "Password",
                  icon: AppIcons.lock,
                  controller: _passwordController,
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Password is required"
                      : null,
                ),
                SizedBox(height: 25),

                // Confirm Password
                AppInputs.textForm(
                  isPassword: true,
                  label: "Confirm Password",
                  icon: AppIcons.lock,
                  controller: _comfirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Confirm password is required";
                    }
                    if (value != _passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),

                // Sign Up button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                      );
                    }
                  },
                  child: Text('Sign up'),
                ),
                SizedBox(height: 25),

                // OR text
                Text(AppStrings.signUpScreenOr),
                SizedBox(height: 25),

                // Sign in with Google
                ElevatedButton(
                  onPressed: () {
                    // Google sign-in logic
                  },
                  child: Text('Sign in with Google'),
                ),
                SizedBox(height: 10),

                // Already have account
                Text(AppStrings.signUpScreenHaveAccount),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(AppStrings.signUpScreenLogin),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
