import 'package:biodata_crud/models/biodata_model.dart';
import 'package:flutter/material.dart';

import '../widgets/add_biodata.dart';
import '../widgets/biodata_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // static final GlobalKey<_HomePageState> homePageKey = GlobalKey<_HomePageState>();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;

  // final List<Widget> _pages = [
  //   const HomePage(),
  //   const AboutPage(),
  //   const SettingPage()
  // ];

  final List<BiodataModel> _registeredBiodata = [
    BiodataModel(
        name: '👈 Swipe left to delete',
        age: '25',
        address: 'Yogyakarta',
        telpNumber: 089521111),
    BiodataModel(
        name: 'Jane Doe', age: '12', address: 'Ciamis', telpNumber: 089521111)
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // void openModalBottomSheet() {
  //   showModalBottomSheet(
  //     useSafeArea: true,
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (context) => AddBiodata(onAddBiodata: _addDataBio),
  //   );
  // }

  void _addDataBio(BiodataModel biodata) {
    setState(() {
      _registeredBiodata.add(biodata);
    });
  }

  void _removeBiodata(BiodataModel biodata) {
    // letak index
    final biodataIndex = _registeredBiodata.indexOf(biodata);
    setState(() {
      _registeredBiodata.remove(biodata);
    });

    // Snackbar dengan undo button
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Data deleted'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          setState(() {
            // insert data yang di-undo ke posisi sesuai index
            _registeredBiodata.insert(biodataIndex, biodata);
          });
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // variabel ketika tidak ada Biodata di home screen
    Widget mainContent = const Center(
      child: Text('Data not found.'),
    );
    // jika ada data maka tampilkan data yang ada
    if (_registeredBiodata.isNotEmpty) {
      mainContent = BiodataItemList(
        biodata: _registeredBiodata,
        onRemoveBiodata: _removeBiodata,
        onAddBiodata: _addDataBio,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata CRUD'),
      ),
      body: mainContent,
      // BiodataItemList(
      //     biodata: _registeredBiodata, onRemoveBiodata: _removeBiodata),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          useSafeArea: true,
          isScrollControlled: true,
          context: context,
          // memanggil kelas untuk menambahkan add biodata
          // di kelas ini ada argumen untuk memanggil fungsi untuk menambahkan biodata
          builder: (context) => AddBiodata(onAddBiodata: _addDataBio),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
