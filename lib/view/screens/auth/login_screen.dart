import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/text.dart';
import 'package:trendy_shop/view/widgets/login/build_email_field.dart';
import 'package:trendy_shop/view/widgets/login/build_password_field.dart';
import 'package:trendy_shop/view/widgets/login/continue_button.dart';
import 'package:trendy_shop/view/widgets/login/remember_to_forget_row.dart';
import 'package:trendy_shop/view/widgets/login/sign_in_options.dart';
import 'package:trendy_shop/view/widgets/login/social_login_options.dart';
import 'package:trendy_shop/view/widgets/my_back_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: MyBackButton(),
        title: Text(
          'Sign in'.tr,
          style: h3Bold.copyWith(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Welcome Back'.tr,
                  style: h2Bold.copyWith(color: Colors.black87, fontSize: 28),
                ),
                const SizedBox(height: 12),
                Text(
                  'Sign in with your email and password\nor continue with social media'
                      .tr,
                  textAlign: TextAlign.center,
                  style: title1.copyWith(color: Colors.black87),
                ),
                const SizedBox(height: 50),

                // Email Field
                EmailField(emailController: _emailController),
                const SizedBox(height: 20),

                // Password Field
                PasswordField(passwordController: _passwordController),
                const SizedBox(height: 20),

                // Remember me and Forgot Password
                RememberForgetRow(
                  rememberMe: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
                const SizedBox(height: 30),

                // Continue Button
                ContinueButton(formKey: _formKey),
                const SizedBox(height: 40),

                // Social Login Options
                SocilaLoginOptions(),
                const SizedBox(height: 20),

                // Sign Up Option
                SignInOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
