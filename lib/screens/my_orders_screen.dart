import 'package:flutter/material.dart';
import 'package:organico/providers/theme_provider.dart';
import 'package:organico/screens/history_screen.dart';
import 'package:organico/screens/ongoing_screen.dart';
import 'package:organico/theme.dart';
import 'package:provider/provider.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
            bottom: const TabBar(
              labelColor: Color(0xff2ECC71),
              unselectedLabelColor: Color(0xFFCDCDCD),
              indicatorColor: Color(0xff2ECC71),
              indicatorWeight: 5,
              tabs: [
                Tab(
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'My Orders',
                style: nunitoTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              OngoingScreen(),
              HistoryScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
