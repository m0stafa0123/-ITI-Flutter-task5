import 'package:flutter/material.dart';

class AppButtons {
  /// 🔘 زر ElevatedButton يستخدم ثيم التطبيق
  static Widget elevatedButton({
    required String text,
    required VoidCallback onTap,
    double height = 50,
    double radius = 12,
    
  }) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(),
        onPressed: onTap,
        child: Text(
          text,
        ),
      ),
    );
  }

  static Widget textButton({
    required String text,
    required VoidCallback onTap,
   
  }) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        
      ),
    );
  }
}
