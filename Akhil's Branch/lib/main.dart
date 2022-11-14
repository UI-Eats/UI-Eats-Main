import 'package:flutter/material.dart';
import 'package:csv/csv.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<List<dynamic>>? csvData;

  Future<List<List<dynamic>>> processCsv() async {
    var result = await DefaultAssetBundle.of(context).loadString(
      "assets/Restaurants.csv",
    );
    return const CsvToListConverter().convert(result, eol: "\n");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Csv reader"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: csvData == null
            ? const CircularProgressIndicator()
            : DataTable(
                columns: csvData![0]
                    .map(
                      (item) => DataColumn(
                        label: Text(
                          item.toString(),
                        ),
                      ),
                    )
                    .toList(),
                rows: csvData!
                    .map(
                      (csvrow) => DataRow(
                        cells: csvrow
                            .map(
                              (csvItem) => DataCell(
                                Text(
                                  csvItem.toString(),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          csvData = await processCsv();
          setState(() {});
        },
      ),
    );
  }
}




































// // ignore: file_names
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; 
// import 'package:flutter/material.dart';
// import 'package:csv/csv.dart';
// import 'dart:async' show Future;
// import 'package:flutter/services.dart' show rootBundle; 
  
// void main() {  
//   List<List<dynamic>> data = [];

//   loadAsset() async {
//     final myData = await rootBundle.loadString("assets/Restaurant.csv");
//     List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);

//     data = csvTable;
//   }

//   runApp(MyApp( 
    
//     var fileName = stdin.readLineSync();
//     var list1 = [];
//     final lines = File(fileName).readAsLinesSync();

//     for (var line in lines) {
//       final values = line.split(',');
//       print(values[0] + values[1] + values[2] + values[3]);
//       list1.add(values[0]);
//     }

//     // ignore: prefer_interpolation_to_compose_strings
//     products: List<String>.generate(500, (int i) => "Product List + $i"),  
//   ));  
// }  



// class MyApp extends StatelessWidget { 

//   MyApp(String? s, {super.key, required List<String> products});

  

//   final List<String> products;  
  
//   const MyApp({Key? key, required this.products}) : super(key: key);  
  
//   @override  
//   Widget build(BuildContext context) {  
//     const appTitle = 'Flutter Long List Demo';  
  
//     return MaterialApp(  
//       title: appTitle,  
//       home: Scaffold(  
//         appBar: AppBar(  
//           title: const Text(appTitle),  
//         ),  
//         body: ListView.builder(  
//           itemCount: products.length,  
//           itemBuilder: (context, index) {  
//             return ListTile(  
//               title: Text(products[index]),  
//             );  
//           },  
//         ),  
//       ),  
//     );  
//   }  
// }  

// // import 'package:flutter/material.dart';
// // import 'package:csv/csv.dart';
// // import 'dart:async' show Future;
// // import 'package:flutter/services.dart' show rootBundle;

// // class TableLayout extends StatefulWidget {
// //   @override
// //   _TableLayoutState createState() => _TableLayoutState();
// // }

// // class _TableLayoutState extends State<TableLayout> {
// //   List<List<dynamic>> data = [];

// //   loadAsset() async {
// //     final myData = await rootBundle.loadString("assets/sales.csv");
// //     List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);

// //     data = csvTable;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
// //       floatingActionButton: FloatingActionButton(
// //           child: Icon(Icons.refresh),
// //           onPressed: () async {
// //             await loadAsset();
// //             print(data);
// //           }),
// //       appBar: AppBar(
// //         title: Text("Table Layout and CSV"),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Table(
// //           columnWidths: {
// //             0: FixedColumnWidth(100.0),
// //             1: FixedColumnWidth(200.0),
// //           },
// //           border: TableBorder.all(width: 1.0),
// //           children: data.map((item) {
// //             return TableRow(
// //                 children: item.map((row) {
// //               return Container(
// //                 color:
// //                     row.toString().contains("NA") ? Colors.red : Colors.green,
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: Text(
// //                     row.toString(),
// //                     style: TextStyle(fontSize: 20.0),
// //                   ),
// //                 ),
// //               );
// //             }).toList());
// //           }).toList(),
// //         ),
// //       ),
// //     );
// //   }
// // }
