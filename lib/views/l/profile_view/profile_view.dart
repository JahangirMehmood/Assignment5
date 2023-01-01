import 'dart:ffi';

import 'package:flutter/material.dart';

import '../detail_view/detail_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  List dropDownData = [
    {'title': 'Male', 'value': '1'},
    {'title': 'Female', 'value': '2'},
  ];
  String defaultValue = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text(
            'Fill Your Profile',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Column(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Full Name', border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(
                            // borderSide: BorderSide.none,
                            )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // TextFormField(
                //   decoration: const InputDecoration(
                //       labelText: 'Email',
                //       prefixIcon: Icon(Icons.email),
                //       border: OutlineInputBorder(
                //           // borderSide: BorderSide.none,
                //           )),
                // ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Date of birth',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        IconButton(
                            onPressed: () async {
                              DateTime? datepeker = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1947),
                                  lastDate: DateTime(2023));
                            },
                            icon: Icon(Icons.calendar_month))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Time',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        IconButton(
                            onPressed: () async {
                              TimeOfDay? pickedtime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                  initialEntryMode: TimePickerEntryMode.dial);
                            },
                            icon: Icon(Icons.lock_clock))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: const EdgeInsets.all(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        isDense: true,
                        isExpanded: true,
                        menuMaxHeight: 350,
                        value: defaultValue,
                        items: [
                          const DropdownMenuItem(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 10),
                                child: Text(
                                  'Selct Gender',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ),
                              value: ''),
                          ...dropDownData.map<DropdownMenuItem<String>>((e) {
                            return DropdownMenuItem(
                                child: Text(e['title']), value: e['value']);
                          }).toList(),
                        ],
                        onChanged: (value) {
                          setState(() {
                            defaultValue = value!;
                          });
                        }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const DetailView()),
                        // );
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text('Sign in with Password'),
                      )),
                ),

                // RowImgText.ImgText(
                //     Image.asset(
                //       'assets/signup/facebook.png',
                //     ),
                //     'text'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
