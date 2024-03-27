// ignore_for_file: deprecated_member_use

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:organico/theme.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreen createState() => _EditProfileScreen();
}

class _EditProfileScreen extends State<EditProfileScreen> {
  File? imageFile;
  final ImagePicker picker = ImagePicker();

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Choose Photo From",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              icon: const Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              // label: const Text("Camera"),
            ),
            IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              // label: const Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  Future takePhoto(ImageSource source) async {
    // final image = await picker.getImage(
    //   source: source,
    // );
    // if (image == null) return;
    // final imageTemporary = File(image.path);

    // setState(() {
    //   imageFile = imageTemporary;
    // });
  }

  Widget imageView() {
    if (imageFile == null) {
      return const CircleAvatar(
        radius: 80.0,
        backgroundImage: AssetImage('assets/avatar_profile.png'),
      );
    } else {
      return CircleAvatar(
        radius: 80.0,
        backgroundImage: FileImage(imageFile!),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    final Color backgroundColor;
    final Color borderColor;
    final Color buttonTextColor;

    if (color == Colors.black) {
      backgroundColor = Colors.white;
      borderColor = const Color(0xffEAEAEA);
      buttonTextColor = Colors.white;
    } else {
      backgroundColor = const Color(0xff1D2335);
      borderColor = const Color(0xff171725);
      buttonTextColor = const Color(0xff171725);
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).primaryColor,
            ),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            'Edit Profile',
            style: nunitoTextStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: Alignment.center,
                            child: imageView(),
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          left: MediaQuery.of(context).size.width / 1.8,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: ((builder) => bottomSheet()),
                              );
                            },
                            child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    Text(
                      'Name',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ' Jano Doe',
                          hintStyle: const TextStyle(color: Colors.grey),
                          focusColor: primaryColor,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Phone',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: ' (307) 555-0133',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(0),
                            child: CountryCodePicker(
                              textStyle:
                                  nunitoTextStyle.copyWith(color: greyColor),
                              initialSelection: 'US',
                              searchStyle:
                                  nunitoTextStyle.copyWith(color: greyColor),
                              dialogTextStyle:
                                  nunitoTextStyle.copyWith(color: greyColor),
                            ),
                          ),
                          hintStyle: const TextStyle(color: Colors.grey),
                          focusColor: primaryColor,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100.0)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Address',
                      style: nunitoTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: darkGreyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "3517 W. Gray St. Utica Pennsylvania",
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(color: borderColor, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: 52,
                      decoration: const BoxDecoration(),
                      child: ElevatedButton(
                        // elevation: 0,
                        onPressed: () {},
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        //   side: BorderSide(color: primaryColor, width: 1),
                        // ),
                        // color: primaryColor,
                        child: Text(
                          'Save',
                          style: nunitoTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: buttonTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
