import 'package:flutter/material.dart';

class AppInputs {
  static Widget textForm({
    required String label,
    required TextEditingController controller,
    String? hint,
    IconData? icon,
    String? Function(String?)? validator,
    bool isPassword = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,                     
        hintText: hint,                       
        prefixIcon: icon != null ? Icon(icon) : null,  
      ),
    );
  }

  static Widget textfield({
    required String label,
    required TextEditingController controller,
    String? hint,
    IconData? icon,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,                    
        hintText: hint,
        prefixIcon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}
