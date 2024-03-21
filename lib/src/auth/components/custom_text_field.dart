import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String placeholder;
  final String label;
  final IconData icon;
  final bool isSecret;

  const CustomTextField(
      {super.key,
      required this.placeholder,
      required this.label,
      required this.icon,
      this.isSecret = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscured = false;

  @override
  void initState() {
    super.initState();
    isObscured = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscured,
        decoration: InputDecoration(
            filled: true,
            isDense: true,
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    },
                    icon: Icon(
                        isObscured ? Icons.visibility : Icons.visibility_off))
                : null,
            hintText: widget.placeholder,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
