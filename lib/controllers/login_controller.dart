// controllers/login_controller.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  var isLoading = false.obs;

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }

  Future<void> loginApi() async {
    final email = emailController.value.text.trim();
    final password = passwordController.value.text;

    print('========================================');
    print('LOGIN ATTEMPT STARTED');
    print('Email: $email');
    print('Password: ${password.isNotEmpty ? "filled" : "empty"}');

    if (email.isEmpty || password.isEmpty) {
      print('VALIDATION FAILED: Empty fields');
      Get.snackbar('Error', 'Please fill all fields', backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    isLoading(true);
    print('Sending request...');

    try {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({"email": email, "password": password}),
      ).timeout(const Duration(seconds: 10));

      print('Status Code: ${response.statusCode}');
      print('Response: ${response.body}');

      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        final token = data['token'];
        print('LOGIN SUCCESSFUL!');
        print('Token: $token');
        print('========================================\n');

        Get.snackbar(
          'Success!',
          'Token: $token',
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: const Duration(seconds: 6),
        );
      } else {
        final error = data['error'] ?? 'Login failed';
        print('LOGIN FAILED: $error');
        print('========================================\n');

        Get.snackbar('Failed', error, backgroundColor: Colors.red, colorText: Colors.white);
      }
    } on TimeoutException {
      print('ERROR: No internet / Timeout');
      Get.snackbar('No Internet', 'Check connection', backgroundColor: Colors.red, colorText: Colors.white);
    } catch (e) {
      print('EXCEPTION: $e');
      Get.snackbar('Error', 'Something went wrong', backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      isLoading(false);
      print('Login process finished\n');
    }
  }
}