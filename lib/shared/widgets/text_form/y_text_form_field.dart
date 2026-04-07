import 'package:flutter/material.dart';

class YTextFromField extends StatelessWidget {
  const YTextFromField({
    super.key,
    this.sufIcon,
    this.prfIcon,
    this.controller,
    this.lableText,
    this.scureText = false,
  });

  final Widget? sufIcon, prfIcon;
  final TextEditingController? controller;
  final String? lableText;
  final bool scureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: scureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        labelText: lableText,
        prefixIcon: prfIcon,
        suffixIcon: sufIcon,
      ),
    );
  }
}
