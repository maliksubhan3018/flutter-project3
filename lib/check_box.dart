// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  TextEditingController nameSeu = TextEditingController();
  String gender = 'm';
  String selectedgender = 'male';
  bool isagree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Divider(),
          TextFormField(
            controller: nameSeu,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10, width: 10),
          Divider(color: Colors.purple, thickness: 10),

          RadioListTile(
            // ignore: deprecated_member_use
            groupValue: gender,
            value: 'm',
            title: Text('male'),
            // ignore: deprecated_member_use, avoid_types_as_parameter_names
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          SizedBox(height: 10),
          RadioListTile(
            // ignore: deprecated_member_use
            groupValue: gender,
            value: 'f',
            title: Text('female'),
            // ignore: deprecated_member_use, avoid_types_as_parameter_names
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          SizedBox(height: 10),
          CheckboxListTile(value: isagree,
          title: Text('do you agree with our terms and condition'),
          activeColor: Colors.blue,
           controlAffinity: ListTileControlAffinity.leading,
            selected: isagree,
            onChanged:   (value) {
            isagree = value!;
            setState(() {});
          },


          
       ),
           SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // ignore: duplicate_ignore
              // ignore: avoid_print
              print(nameSeu.text);
              print(selectedgender);
            },
            child: Text('submit'),
          ),
          SizedBox(height: 10),

          Text('select your gender'),
          DropdownButton(
            items: ['male', 'Female', 'Other']
                .map(
                  (mylist) =>
                      DropdownMenuItem(value: mylist, child: Text(mylist)),
                )
                .toList(),
            hint: Text('select'),
            onChanged: (value) {
              setState(() {
                selectedgender.toString();
              });
            },
          ),
        ],
      ),
    );
  }
}
