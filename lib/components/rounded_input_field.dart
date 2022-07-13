import 'package:flutter/material.dart';
import 'package:artefact/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatefulWidget {
  final String? hintText;
  final IconData? icon;
  final TextEditingController? e;
  final ValueChanged<String>? onChanged;
  const RoundedInputField({
    Key? key,
    this.e,
    this.hintText,
    this.icon = Icons.mail,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedInputField> createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) => "email vide",
        controller: widget.e,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
