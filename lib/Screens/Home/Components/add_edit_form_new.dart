import 'package:flutter/material.dart';

class AddEditFormNew extends StatelessWidget {
  String dropdownValue = 'MEIF';
  @override
  Widget build(BuildContext context) {
    return Container(
        //height: MediaQuery.of(context).size.height / 1.6,
        //width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 100, right: 100, top: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
        child: Column(
            // main column
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  height: 35,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    //borderRadius: BorderRadius.circular(46),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -2),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.16),
                      ),
                    ],
                  ),
                  child: Text('Investor details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white))),
              /* SizedBox(
                child: Text('Investor details',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.blue[300],
                        color: Colors.white)),
                height: 30,
              ) */
              Divider(
                thickness: 2,
                color: Colors.blue,
              ),
              DropdownButton(
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
                    DropdownMenuItem(child: Text("CADENT"), value: 'CADENT'),
                    DropdownMenuItem(child: Text("MEIF5SC"), value: 'MEIF5SC')
                  ],
                  onChanged: (value) {}),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.inventory),
                  labelText: 'Account',
                ),
                onSaved: (String value) {},
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.inventory),
                  labelText: 'Investor Account ID',
                ),
                onSaved: (String value) {},
              ),
              SizedBox(height: 30),
              Container(
                  height: 35,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    //borderRadius: BorderRadius.circular(46),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -2),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.16),
                      ),
                    ],
                  ),
                  child: Text('Obligation details',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white))),
              Divider(
                thickness: 2,
                color: Colors.blue,
              ),
              DropdownButton(
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
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: 'Effective date',
                ),
                onSaved: (String value) {},
              ),
              DropdownButton(
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
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.inventory),
                  labelText: 'Owner',
                ),
                onSaved: (String value) {},
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                maxLength: 100,
                decoration: const InputDecoration(
                  icon: Icon(Icons.inventory),
                  labelText: 'Notes/description',
                ),
                onSaved: (String value) {},
              ),
              ElevatedButton(
                onPressed: () => {},
                autofocus: true,
                child: Text('Submit'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return Colors.green; // Use the component's default.
                    },
                  ),
                ),
              )
            ]));
  }
}
