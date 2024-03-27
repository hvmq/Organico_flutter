import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organico/theme.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreen();
}

class _NotificationSettingsScreen extends State<NotificationSettingsScreen> {
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;
  bool value4 = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
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
            padding: const EdgeInsets.all(20),
            child: Text(
              'Notification Settings',
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
                    children: <Widget>[
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'In App Notification',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          buildSwitch1(),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'New Promo',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          buildSwitch2(),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'Tips & Trick',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          buildSwitch3(),
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              decoration: const BoxDecoration(),
                              child: Text(
                                'Update Application',
                                style: nunitoTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          buildSwitch4(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildSwitch1() => Transform.scale(
        scale: 1.1,
        child: CupertinoSwitch(
          value: value1,
          onChanged: (value) => setState(() => value1 = value),
        ),
      );
  Widget buildSwitch2() => Transform.scale(
        scale: 1.1,
        child: CupertinoSwitch(
          value: value2,
          onChanged: (value) => setState(() => value2 = value),
        ),
      );
  Widget buildSwitch3() => Transform.scale(
        scale: 1.1,
        child: CupertinoSwitch(
          value: value3,
          onChanged: (value) => setState(() => value3 = value),
        ),
      );
  Widget buildSwitch4() => Transform.scale(
        scale: 1.1,
        child: CupertinoSwitch(
          value: value4,
          onChanged: (value) => setState(() => value4 = value),
        ),
      );
}
