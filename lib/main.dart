

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DataTable(
          headingRowHeight: 100
            ,columns: [
          DataColumn(label: Text("Name"),tooltip: "Name"),
          DataColumn(label: Text("Age"),),
          DataColumn(label: Text("Role"),),
        ], rows: [
          DataRow(cells: [
            DataCell(Text("Shahin")),
            DataCell(Text("24")),
            DataCell(Text("Student")),
          ]),
          DataRow(cells: [
            DataCell(Text("Shahin")),
            DataCell(Text("24")),
            DataCell(Text("Student")),
          ]),
          DataRow(cells: [
            DataCell(Text("Shahin")),
            DataCell(Text("24")),
            DataCell(Text("Student")),
          ]),
          DataRow(cells: [
            DataCell(Icon(Icons.add_circle)),
            DataCell(Text("24")),
            DataCell(Text("Student"),showEditIcon: true),
          ]),
        ]),
      ),
    );
  }
}
