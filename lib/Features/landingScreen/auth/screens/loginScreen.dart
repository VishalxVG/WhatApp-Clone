import 'package:flutter/material.dart';
import 'package:watsapp/common/utils/colors.dart';
import 'package:country_picker/country_picker.dart';

class LoginScrren extends StatefulWidget {
  static const routeName = "/login-screen";
  const LoginScrren({super.key});

  @override
  State<LoginScrren> createState() => _LoginScrrenState();
}

class _LoginScrrenState extends State<LoginScrren> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phoneController.dispose();
  }

  void countryPicker() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Center(
                  child: Text("Enter your phone number"),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            ],
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Watsapp will need to verify your phone number"),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () => countryPicker(),
                      child: const Text("Pick a country")),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      if (country != null) Text("+${country!.phoneCode}"),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 280,
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration:
                              const InputDecoration(hintText: "\tphone number"),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 90,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tabColor,
                  ),
                  onPressed: () {},
                  child: const Text("Next"),
                ),
              )
            ],
          ),
        ));
  }
}
