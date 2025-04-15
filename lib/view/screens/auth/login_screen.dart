import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:trendy_shop/utils/styles/colors.dart';
import 'package:trendy_shop/utils/styles/text.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                const SizedBox(height: 50),

                // Email Field
                _buildEmailField(),
                const SizedBox(height: 20),

                // Password Field
                _buildPasswordField(),
                const SizedBox(height: 20),

                // Remember me and Forgot Password
                _buildRememberForgotRow(),
                const SizedBox(height: 30),

                // Continue Button
                _buildContinueButton(),
                const SizedBox(height: 40),

                // Social Login Options
                _buildSocialLoginOptions(),
                const SizedBox(height: 20),

                // Sign Up Option
                _buildSignUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email'.tr,
        hintText: 'Enter your email'.tr,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: AppColors.appBordersColor),
          gapPadding: 10,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        suffixIcon: const Icon(Icons.email_outlined),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email'.tr;
        }
        if (!GetUtils.isEmail(value)) {
          return 'Please enter a valid email'.tr;
        }
        return null;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password'.tr,
        hintText: 'Enter your password'.tr,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.black12),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: AppColors.appBordersColor),
          gapPadding: 10,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: Colors.red),
          gapPadding: 10,
        ),
        suffixIcon: const Icon(Icons.lock_outline),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password'.tr;
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters'.tr;
        }
        return null;
      },
    );
  }

  Widget _buildRememberForgotRow() {
    return Row(
      children: [
        Checkbox(
          value: _rememberMe,
          activeColor: AppColors.appBordersColor,
          onChanged: (value) {
            setState(() {
              _rememberMe = value!;
            });
          },
        ),
        Text('Remember me'.tr, style: const TextStyle(fontSize: 14)),
        const Spacer(),
        TextButton(
          onPressed: () {
            // TODO: Navigate to forgot password screen
          },
          child: Text(
            'Forgot Password'.tr,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContinueButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.appBordersColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // TODO: Implement login functionality
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Processing login...'.tr)));
          }
        },
        child: Text(
          'Continue'.tr,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSocialLoginOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialIcon('assets/images/Facebook.svg'),
        const SizedBox(width: 20),
        _buildSocialIcon('assets/images/Group_90.svg'),
        const SizedBox(width: 20),
        _buildSocialIcon('assets/images/gmail.svg'),
      ],
    );
  }

  Widget _buildSocialIcon(String iconPath) {
    return InkWell(
      onTap: () {
        // TODO: Implement social login
      },
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 199, 214),
                  blurRadius: 20,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(12),
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconPath),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ".tr,
          style: const TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            // TODO: Navigate to sign up screen
          },
          child: Text(
            'Sign Up'.tr,
            style: TextStyle(fontSize: 16, color: AppColors.appBordersColor),
          ),
        ),
      ],
    );
  }
}
