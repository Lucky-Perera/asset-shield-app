import 'package:asset_shield/core/routes/router.dart';
import 'package:asset_shield/core/theme/color_palette.dart';
import 'package:asset_shield/core/utility/storage_service.dart';
import 'package:asset_shield/features/auth/data/services/auth_service.dart';
import 'package:asset_shield/features/common/widgets/app_scaffold.dart';
import 'package:asset_shield/features/common/widgets/reusable_button.dart';
import 'package:asset_shield/features/common/widgets/reusable_text_field.dart';
import 'package:asset_shield/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = AuthService();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _onLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _isLoading = true);
      EasyLoading.show();

      try {
        final response = await _authService.login(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );

        await StorageService().saveUserObject(response.data.user);

        if (!mounted) return;

        if (response.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Welcome ${response.data.user.name}!'),
              backgroundColor: Colors.green,
            ),
          );
          Routes().home();
        }
      } catch (e) {
        if (!mounted) return;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
        );
      } finally {
        if (mounted) {
          EasyLoading.dismiss();
          setState(() => _isLoading = false);
        }
      }
    }
  }

  String? _emailValidator(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^.+@.+\..+$');
    if (!emailRegex.hasMatch(v)) return 'Enter a valid email';
    return null;
  }

  String? _passwordValidator(String? value) {
    final v = value ?? '';
    if (v.isEmpty) return 'Password is required';
    // if (v.length < 6) return 'Minimum 6 characters';
    return null;
  }

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
                    validator: _emailValidator,
                    enabled: !_isLoading,
                  ),
                  SizedBox(height: 16.h),
                  ReusableTextField(
                    controller: _passwordController,
                    labelText: 'Password',
                    hintText: 'Your password',
                    textInputAction: TextInputAction.done,
                    prefixIcon: const Icon(Icons.lock_outline),
                    obscureText: true,
                    validator: _passwordValidator,
                    onSubmitted: (_) => _onLogin(),
                    enabled: !_isLoading,
                  ),
                  SizedBox(height: 24.h),
                  ReusableButton(
                    onPressed: _isLoading ? null : _onLogin,
                    text: _isLoading ? 'Logging in...' : 'Login',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
