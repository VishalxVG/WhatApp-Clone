import 'dart:io';

import 'package:flutter/material.dart';
import 'package:watsapp/common/utils/utils.dart';

class UserInformatioScreen extends StatefulWidget {
  static const String routeName = "/user-information";
  const UserInformatioScreen({super.key});

  @override
  State<UserInformatioScreen> createState() => _UserInformatioScreenState();
}

class _UserInformatioScreenState extends State<UserInformatioScreen> {
  final TextEditingController nameController = TextEditingController();

  File? image;
  void selectImage() async {
    image = await pickImageFromGalary(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                image == null
                    ? const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://as1.ftcdn.net/v2/jpg/02/59/39/46/1000_F_259394679_GGA8JJAEkukYJL9XXFH2JoC3nMguBPNH.jpg"),
                        radius: 64,
                      )
                    : CircleAvatar(
                        backgroundImage: FileImage(image!),
                        radius: 64,
                      ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: selectImage,
                    icon: const Icon(
                      Icons.add_a_photo,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.85,
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your name",
                    ),
                    controller: nameController,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.done),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
