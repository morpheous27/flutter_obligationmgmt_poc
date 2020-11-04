import 'dart:html';

import 'package:flutter/material.dart';

class AddEditForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = 'MEIF';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Flexible(
            child: Column(
                // main column
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text('Investor details',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(
                color: Colors.blue,
              ),
              Flexible(
                  //first row
                  child: Row(
                children: [
                  Flexible(
                      child: Column(
                    //first column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: DropdownButton(
                                value: 'Investment',
                                items: [
                                  DropdownMenuItem(
                                    child: Text('Investment'),
                                    value: 'Investment',
                                  ),
                                  DropdownMenuItem(
                                    child: Text("MIPII"),
                                    value: 'MIPII',
                                  ),
                                  DropdownMenuItem(
                                      child: Text("CADENT"), value: 'CADENT'),
                                  DropdownMenuItem(
                                      child: Text("MEIF5SC"), value: 'MEIF5SC')
                                ],
                                onChanged: (value) {}),
                          )
                        ]),
                      )
                    ],
                  )),
                  Flexible(
                      child: Column(
                    // second column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.inventory),
                                labelText: 'Account',
                              ),
                              onSaved: (String value) {},
                            ),
                          ),
                        ]),
                      )
                    ],
                  ))
                ],
              )),
              //second row
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Column(
                    // first column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.inventory),
                                labelText: 'Investor Account ID',
                              ),
                              onSaved: (String value) {},
                            ),
                          ),
                        ]),
                      )
                    ],
                  ))
                ],
              )),
              Text('Obligation details',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(
                color: Colors.blue,
              ),
              //third row
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Column(
                    //first column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: DropdownButton(
                                value: 'Type_1',
                                items: [
                                  DropdownMenuItem(
                                    child: Text('Type_1'),
                                    value: 'Type_1',
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Type_2"),
                                    value: 'Type_2',
                                  )
                                ],
                                onChanged: (value) {}),
                          )
                        ]),
                      )
                    ],
                  )),
                  Flexible(
                      child: Column(
                    // second column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: CalendarDatePicker(
                              onDateChanged: (value) => {},
                              currentDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now(),
                              initialDate: DateTime.now(),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ))
                ],
              )),
              //forth row
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Column(
                    //first column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: DropdownButton(
                                value: 'Event',
                                items: [
                                  DropdownMenuItem(
                                    child: Text('Recurring'),
                                    value: 'Recurring',
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Event"),
                                    value: 'Event',
                                  )
                                ],
                                onChanged: (value) {}),
                          )
                        ]),
                      )
                    ],
                  ))
                ],
              )),
              //fifth row
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Column(
                    //first column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.inventory),
                                labelText: 'Owner',
                              ),
                              onSaved: (String value) {},
                            ),
                          )
                        ]),
                      )
                    ],
                  )),
                  Flexible(
                      child: Column(
                    // second column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 8,
                              maxLength: 1000,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.inventory),
                                labelText: 'Notes/description',
                              ),
                              onSaved: (String value) {},
                            ),
                          ),
                        ]),
                      )
                    ],
                  ))
                ],
              )),
              //sixth row
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Column(
                    //first column
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Row(children: [
                          Flexible(
                            child: ButtonBar(
                              children: [Text('Save')],
                            ),
                          )
                        ]),
                      )
                    ],
                  ))
                ],
              ))
            ])));
  }
}
