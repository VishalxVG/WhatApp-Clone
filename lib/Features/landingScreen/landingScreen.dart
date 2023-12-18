import 'package:flutter/material.dart';
import 'package:watsapp/common/utils/colors.dart';

//!
//?
//TODO

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  String selectLanguage = "English";

  Widget _buildLanguageTile(String Language) {
    return ListTile(
      title: Text(Language),
      onTap: () {
        setState(() {
          selectLanguage = Language;
        });
        Navigator.pop(context);
      },
    );
  }

//! CODE FOR THE DIALOG BOX

  void _showLanguageDialog() {
    showModalBottomSheet(
        context: context,
        barrierLabel: "Select Language",
        backgroundColor: Colors.amber,
        builder: (BuildContext context) {
          return DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 1,
            builder: (BuildContext context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
                child: ListView(
                  controller: scrollController,
                  shrinkWrap: true,
                  children: [
                    _buildLanguageTile("English"),
                    _buildLanguageTile("Spanish"),
                  ],
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            Image.asset(
              "assets/bg.png",
              height: 340,
              width: double.infinity,
              color: tabColor,
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Welcome To WatsApp",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                style: TextStyle(
                  color: greyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            //! Change langage button

            SizedBox(
              height: 40,
              width: 160,
              child: ElevatedButton(
                onPressed: _showLanguageDialog,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 21, 20, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.language,
                      color: tabColor,
                    ),
                    Text(
                      "$selectLanguage",
                      style: const TextStyle(color: tabColor),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: tabColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80),

            SizedBox(
              //! Agree and Continue Button
              width: 380,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: tabColor,
                ),
                child: const Text(
                  "AGREE AND CONTINUE",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
