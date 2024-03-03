import 'package:flutter/material.dart';

class BioTextField extends StatelessWidget {
  const BioTextField(
      {super.key,
      required this.labelBio,
      required this.textFieldController,
      this.bioHint = ''});

  final String labelBio;
  final TextEditingController textFieldController;
  final String bioHint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
      // text input color
      style: Theme.of(context).textTheme.titleSmall,
      decoration: InputDecoration(
          labelText: labelBio,
          hintText: bioHint,
          border: const UnderlineInputBorder(),
          labelStyle: Theme.of(context).textTheme.titleSmall),
    );
  }
}
