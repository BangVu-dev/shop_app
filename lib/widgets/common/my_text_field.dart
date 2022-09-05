import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController? controller;
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool? obscureText;
  final Function? validator;
  final Function? onChanged;
  final Function? onFieldSubmitted;
  final FocusNode? focusNode;
  final int? maxLines;
  final Function? onSaved;

  const MyTextField(
      {required this.labelText,
      this.controller,
      this.onChanged,
      this.baseColor,
      this.borderColor,
      this.errorColor,
      this.inputType = TextInputType.text,
      this.inputAction,
      this.obscureText = false,
      this.validator,
      this.onFieldSubmitted,
      this.focusNode,
      this.maxLines,
      this.onSaved,
      super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: const Color.fromRGBO(110, 133, 183, 0.1),
      ),
      textInputAction: widget.inputAction,
      keyboardType: widget.inputType,
      onFieldSubmitted: widget.onFieldSubmitted as void Function(String)?,
      onChanged: widget.onChanged as void Function(String)?,
      focusNode: widget.focusNode,
      maxLines: widget.maxLines,
      controller: widget.controller,
      onSaved: widget.onSaved as void Function(String?)?,
      validator: widget.validator as String? Function(String?)?,
    );
  }
}
