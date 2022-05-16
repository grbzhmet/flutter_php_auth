import 'package:flutter_php_auth/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:get_storage/get_storage.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

//ver çek
// 'https://onurerdogan.com.tr/demo/mobilservis/vericek.php?userId=' +
//          GetStorage().read("userId"));

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: CupertinoIcons.pencil_outline,
                    iconStyle: IconStyle(),
                    title: 'Profile',
                    subtitle: "Profile settings",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.fingerprint,
                    iconStyle: IconStyle(
                      iconsColor: Colors.white,
                      withBackground: true,
                      backgroundColor: Colors.red,
                    ),
                    title: 'Security',
                    subtitle: "You can manage notifications and permissions",
                  ),
                ],
              ),
              SettingsGroup(
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.info_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.purple,
                    ),
                    title: 'About Us',
                    subtitle: "about us",
                  ),
                ],
              ),
              // You can add a settings title
              SettingsGroup(
                settingsGroupTitle: "Account",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.feed_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.yellow,
                    ),
                    title: "User Agreement",
                    subtitle: "About user information",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.feed_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.red,
                    ),
                    title: "Privacy Policy",
                    subtitle: "About the use of your information",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                      GetStorage().remove("userId");
                    },
                    icons: Icons.exit_to_app_rounded,
                    iconStyle: IconStyle(
                      backgroundColor: Colors.red,
                    ),
                    title: "Log Out",
                    subtitle: "To log in again",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
