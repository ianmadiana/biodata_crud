import 'package:flutter/material.dart';

class BioTextField extends StatelessWidget {
  const BioTextField(
      {super.key, required this.labelBio, required this.textFieldController});

  final String labelBio;
  final TextEditingController textFieldController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
      // text input color
      style: Theme.of(context).textTheme.titleSmall,
      decoration: InputDecoration(
          labelText: labelBio,
          border: const UnderlineInputBorder(),
          labelStyle: Theme.of(context).textTheme.titleSmall),
    );
  }
}
