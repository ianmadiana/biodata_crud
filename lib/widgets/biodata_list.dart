import 'package:biodata_crud/models/biodata_model.dart';
import 'package:biodata_crud/widgets/biodata_item.dart';
import 'package:flutter/material.dart';

class BiodataItemList extends StatelessWidget {
  const BiodataItemList({
    super.key,
    required this.biodata,
    required this.onRemoveBiodata,
    required this.onAddBiodata,
  });

  final void Function(BiodataModel biodata) onRemoveBiodata;
  final List<BiodataModel> biodata;
  final void Function(BiodataModel biodata) onAddBiodata;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: biodata.length,
        itemBuilder: (context, index) => Dismissible(
              background: Container(
                color: Theme.of(context).colorScheme.errorContainer,
                margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin!.horizontal,
                  vertical: Theme.of(context).cardTheme.margin!.vertical,
                  // horizontal: 16,
                  // vertical: 10
                ),
                child: Center(
                  child: Text(
                    'Delete',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
              onDismissed: (direction) {
                onRemoveBiodata(biodata[index]);
              },
              key: ValueKey(biodata[index]),
              child: BiodataItem(
                biodata: biodata[index],
                onAddBiodata: onAddBiodata,
              ),
            ));
  }
}
