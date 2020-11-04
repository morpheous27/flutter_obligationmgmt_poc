import 'package:flutter/material.dart';
import 'package:food_web/Screens/Home/Components/add_edit_form.dart';
import 'package:food_web/Screens/Home/Components/add_edit_form_tab.dart';

import 'custom_data_grid.dart';

class TabbedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Obligations', style: TextStyle(height: 0)),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                child: Text('View obligations',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Tab(
                child: Text('Add/Edit obligation',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CustomDataGrid('Obligations data'),
            AddEditFormTab(),
          ],
        ),
      ),
    );
  }
}
