import 'package:biodata_crud/models/biodata_model.dart';
import 'package:biodata_crud/widgets/biodata_item.dart';
import 'package:flutter/material.dart';

class BiodataItemList extends StatelessWidget {
  const BiodataItemList({
    super.key,
    required this.biodata,
    required this.onRemoveBiodata,
  });

  final void Function(BiodataModel biodata) onRemoveBiodata;
  final List<BiodataModel> biodata;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: biodata.length,
        itemBuilder: (context, index) => Dismissible(
              onDismissed: (direction) {
                onRemoveBiodata(biodata[index]);
              },
              key: ValueKey(biodata[index]),
              child: BiodataItem(
                biodata: biodata[index],
              ),
            ));
  }
}
