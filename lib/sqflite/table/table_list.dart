import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/sqflite/table/controller.dart';
import 'package:word_meaning/sqflite/table/view.dart';
import 'package:word_meaning/utils/color.dart';

class TableListView extends StatefulWidget {
  @override
  _TableListViewState createState() => _TableListViewState();
}

class _TableListViewState extends State<TableListView> {
  List<String> _tableNames = [];
  late TableController tableController;
  @override
  void initState() {
    super.initState();
    tableController = Get.put(TableController());
    _fetchTables();
  }

  Future<void> _fetchTables() async {
    final tables = await CustomDatabase.instance.getAllTables();
    setState(() {
      _tableNames = tables;
      tableController.tableList = _tableNames;
    });
  }

  final TextEditingController _tableNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: _tableNames.length,
        itemBuilder: (context, index) {
          return Center(
            child: InkWell(
              onTap: () => Get.to(CustomTableView(
                tabelname: _tableNames[index],
              )),
              child:CustomGrid(
                            image: "assets/icons/files.gif",
                            text:
                                 _tableNames[index]),
            ),
          );
        },
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _showAddDogDialog(context);
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }

  Future<void> _createTable() async {
    String tableName = _tableNameController.text;
    if (tableName.isNotEmpty) {
      await CustomDatabase.instance.createCustomTable(tableName);
      _fetchTables();
      _tableNameController.clear();
    }
  }

  void _showAddDogDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Table '),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _tableNameController,
                decoration: InputDecoration(labelText: 'Enter Table Name'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _createTable();
                Navigator.pop(context);
              },
              child: Text('Create table'),
            ),
          ],
        );
      },
    );
  }
}
