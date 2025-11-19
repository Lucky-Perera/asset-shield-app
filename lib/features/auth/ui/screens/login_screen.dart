import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widgets/reusable_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLogin() {
    // if (_formKey.currentState?.validate() ?? false) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Logging in...')));
    Routes().home();
  }

  // String? _emailValidator(String? value) {
  //   final v = value?.trim() ?? '';
  //   if (v.isEmpty) return 'Email is required';
  //   final emailRegex = RegExp(r'^.+@.+\..+$');
  //   if (!emailRegex.hasMatch(v)) return 'Enter a valid email';
  //   return null;
  // }

  // String? _passwordValidator(String? value) {
  //   final v = value ?? '';
  //   if (v.isEmpty) return 'Password is required';
  //   if (v.length < 6) return 'Minimum 6 characters';
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: ColorPalette.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.h),
                    child: Assets.icons.logoTransparentBackground.image(
                      width: 140.w,
                      height: 140.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  ReusableTextField(
                    controller: _emailController,
                    labelText: 'Email',
                    hintText: 'you@example.com',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    prefixIcon: const Icon(Icons.email_outlined),
                    // validator: _emailValidator,
                  ),
                  SizedBox(height: 16.h),
                  ReusableTextField(
                    controller: _passwordController,
                    labelText: 'Password',
                    hintText: 'Your password',
                    textInputAction: TextInputAction.done,
                    prefixIcon: const Icon(Icons.lock_outline),
                    obscureText: true,
                    // validator: _passwordValidator,
                    onSubmitted: (_) => _onLogin(),
                  ),
                  SizedBox(height: 24.h),
                  ReusableButton(onPressed: _onLogin, text: 'Login'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
