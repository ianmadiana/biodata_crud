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
    setState(() {
      _registeredBiodata.remove(biodata);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Biodata CRUD'),
        ),
        body: BiodataItemList(
            biodata: _registeredBiodata, onRemoveBiodata: _removeBiodata),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showModalBottomSheet(
            useSafeArea: true,
            isScrollControlled: true,
            context: context,
            builder: (context) => AddBiodata(onAddBiodata: _addDataBio),
          ),
          child: const Icon(Icons.add),
        ));
  }
}
