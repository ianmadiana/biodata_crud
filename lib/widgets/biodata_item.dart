import 'package:flutter/material.dart';

import '../models/biodata_model.dart';

class BiodataItem extends StatelessWidget {
  const BiodataItem({
    super.key,
    required this.biodata,
  });

  final BiodataModel biodata;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.lightBlue,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(biodata.name),
              Text(biodata.age),
              Text(biodata.address),
              Text(biodata.telpNumber.toString()),
            ],
          ),
          const FlutterLogo()
        ]),
      ),
    );
  }
}
