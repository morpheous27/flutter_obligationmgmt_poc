import 'package:flutter/material.dart';

class CustomDataGrid extends StatelessWidget {
  final String title;
  CustomDataGrid(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          )),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
              headingRowColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected))
                  return Colors.blue[400];
                return Colors.blue[400]; // Use the default value.
              }),
              dataRowColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected))
                  return Colors.cyan[50];
                return null; // Use the default value.
              }),
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Account',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Investment',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Type',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Effective date',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Trigger',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Frequency',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Monitoring approach',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Owner',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Next Date',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Next Status',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Previous Date',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Previous Status',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Edit?',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
              rows: const <DataRow>[
                DataRow(
                  selected: false,
                  cells: <DataCell>[
                    DataCell(Text('Investor 1')),
                    DataCell(Text('MEIF 3')),
                    DataCell(Text('Reporting')),
                    DataCell(Text('1/01/2020')),
                    DataCell(Text('Recurring')),
                    DataCell(Text('Quaterly')),
                    DataCell(Text('Reminder')),
                    DataCell(Text('User_1')),
                    DataCell(Text('1/12/2020')),
                    DataCell(Text('Not Started')),
                    DataCell(Text('1/09/2020')),
                    DataCell(Text('Completed')),
                    DataCell(Text(''), showEditIcon: true),
                  ],
                ),
                DataRow(
                  selected: true,
                  cells: <DataCell>[
                    DataCell(Text('Investor 2')),
                    DataCell(Text('MEIF 5')),
                    DataCell(Text('Co-investment')),
                    DataCell(Text('1/01/2020')),
                    DataCell(Text('Event')),
                    DataCell(Text('Semi-Annually')),
                    DataCell(Text('Checklist')),
                    DataCell(Text('User_2')),
                    DataCell(Text('1/12/2020')),
                    DataCell(Text('Not Started')),
                    DataCell(Text('1/09/2020')),
                    DataCell(Text('Completed')),
                    DataCell(Text(''), showEditIcon: true),
                  ],
                ),
                DataRow(
                  selected: false,
                  cells: <DataCell>[
                    DataCell(Text('Investor 3')),
                    DataCell(Text('MIP II')),
                    DataCell(Text('Reporting')),
                    DataCell(Text('1/01/2020')),
                    DataCell(Text('Event')),
                    DataCell(Text('Annually')),
                    DataCell(Text('Reminder')),
                    DataCell(Text('User_4')),
                    DataCell(Text('1/12/2020')),
                    DataCell(Text('Not Started')),
                    DataCell(Text('1/09/2020')),
                    DataCell(Text('Pending')),
                    DataCell(Text(''), showEditIcon: true),
                  ],
                )
              ],
              dividerThickness: 2.0,
              showBottomBorder: true)),
    );
  }
}
