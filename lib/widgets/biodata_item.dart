import 'package:biodata_crud/widgets/add_biodata.dart';
import 'package:biodata_crud/widgets/edit_biodata.dart';
import 'package:flutter/material.dart';

import '../models/biodata_model.dart';

class BiodataItem extends StatelessWidget {
  const BiodataItem({
    super.key,
    required this.biodata,
    required this.onAddBiodata,
  });

  final BiodataModel biodata;
  final void Function(BiodataModel biodata) onAddBiodata;

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
              Text(biodata.name,
                  // Theme.of(context).textTheme.titleLarge dipengaruhi dari theme data di main.dart
                  style: Theme.of(context).textTheme.titleLarge),
              Text(biodata.age),
              Text(biodata.address),
              Text(biodata.telpNumber.toString()),
            ],
          ),
          // EDIT BIODATA
          IconButton(
              onPressed: () => showModalBottomSheet(
                    useSafeArea: true,
                    isScrollControlled: true,
                    context: context,
                    // memanggil kelas untuk menambahkan add biodata
                    // di kelas ini ada argumen untuk memanggil fungsi untuk menambahkan biodata
                    builder: (context) => EditBiodata(
                      onAddBiodata: onAddBiodata,
                      biodata: biodata,
                    ),
                  ),
              icon: Icon(Icons.edit))
        ]),
      ),
    );
  }
}

//   Future<dynamic> editBiodata(BuildContext context, String id, String newName) {
//     return showModalBottomSheet(
//       context: context,
//       builder: (context) => Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextField(
//                 autofillHints: ['test'],
//               ),
//               Text(id),
//               Text(newName),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
