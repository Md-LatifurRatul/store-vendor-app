import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorRegistrationScreen extends StatefulWidget {
  const VendorRegistrationScreen({super.key});

  @override
  State<VendorRegistrationScreen> createState() =>
      _VendorRegistrationScreenState();
}

class _VendorRegistrationScreenState extends State<VendorRegistrationScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String stateValue;
  late String cityValue;
  late String countryValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            toolbarHeight: 200,
            backgroundColor: Colors.pink,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow.shade900,
                          Colors.yellow,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.photo),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Bussiness Name',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SelectState(
                      onCountryChanged: (value) {
                        setState(() {
                          countryValue = value;
                        });
                      },
                      onStateChanged: (value) {
                        setState(
                          () {
                            stateValue = value;
                          },
                        );
                      },
                      onCityChanged: (value) {
                        setState(
                          () {
                            cityValue = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
