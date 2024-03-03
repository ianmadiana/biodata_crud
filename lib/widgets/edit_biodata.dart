import 'package:biodata_crud/models/biodata_model.dart';
import 'package:flutter/material.dart';

import 'biodata_texfield.dart';

class EditBiodata extends StatefulWidget {
  const EditBiodata({
    super.key,
    required this.onAddBiodata,
    required this.biodata,
  });

  final void Function(BiodataModel biodata) onAddBiodata;
  final BiodataModel biodata;

  @override
  State<EditBiodata> createState() => _EditBiodataState();
}

class _EditBiodataState extends State<EditBiodata> {
  final _nameController = TextEditingController();

  final _ageController = TextEditingController();

  final _addressController = TextEditingController();

  final _telpNumberController = TextEditingController();

  Future<void> _submitBiodata(BuildContext context) async {
    final enteredTelpNumber = int.tryParse(_telpNumberController.text);
    if (_nameController.text.trim().isEmpty ||
        _ageController.text.trim().isEmpty ||
        _addressController.text.trim().isEmpty ||
        _telpNumberController.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid input'),
          content: const Text('Input yang Anda isi tidak valid'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Okay')),
          ],
        ),
      );
      return;
    }
    widget.onAddBiodata(BiodataModel(
        name: _nameController.text,
        age: _ageController.text,
        address: _addressController.text,
        telpNumber: enteredTelpNumber!));

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Data successfully submitted'),
      duration: Duration(seconds: 2),
    ));

    Navigator.pop(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _addressController.dispose();
    _telpNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Edit Biodata',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                BioTextField(
                  labelBio: 'Name',
                  textFieldController: _nameController,
                  bioHint: widget.biodata.name,
                ),
                BioTextField(
                    labelBio: 'Age',
                    textFieldController: _ageController,
                    bioHint: widget.biodata.age),
                BioTextField(
                    labelBio: 'Address',
                    textFieldController: _addressController,
                    bioHint: widget.biodata.address),
                BioTextField(
                    labelBio: 'Telephone Number',
                    textFieldController: _telpNumberController,
                    bioHint: widget.biodata.telpNumber.toString()),
                const SizedBox(height: 20),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel')),
                    ElevatedButton(
                        onPressed: () {
                          _submitBiodata(context);
                        },
                        child: const Text('Submit')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
