import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // ボタンの背景色
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // ボタンの角の丸み
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 56, vertical: 8), // ボタンのパディング
        ),
        child: const Text(
          '次へ',
          style: TextStyle(
              color: Colors.white, // テキストの色
              fontSize: 18, // テキストのサイズ
              fontWeight: FontWeight.w900),
        ));
  }
}
