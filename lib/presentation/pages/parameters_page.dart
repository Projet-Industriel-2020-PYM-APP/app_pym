import 'package:app_pym/presentation/widgets/parameters/authentication_status.dart';
import 'package:app_pym/presentation/widgets/parameters/cgu_page.dart';
import 'package:app_pym/presentation/widgets/parameters/notification_status.dart';
import 'package:app_pym/presentation/widgets/parameters/privacy_policy_page.dart';
import 'package:app_pym/presentation/widgets/parameters/theme_status.dart';
import 'package:app_pym/presentation/widgets/parameters/version_status.dart';
import 'package:flutter/material.dart';

class ParametersPage extends StatelessWidget {
  const ParametersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paramètres"),
      ),
      body: ListView(
        children: [
          const AuthenticationStatus(),
          const Divider(),
          const ThemeStatus(),
          const Divider(),
          const NotificationStatus(),
          const Divider(),
          const VersionStatus(),
          const Divider(),
          ListTile(
            title: const Text("Politique de confidentalité"),
            onTap: () => Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) {
                  return const PrivacyPolicyPage();
                },
              ),
            ),
          ),
          ListTile(
            title: const Text("Conditions générales d'utilisation"),
            onTap: () => Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) {
                  return const CGUPage();
                },
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("A propos de l'application Pôle Yvon Morandat"),
            onTap: () => showLicensePage(
              context: context,
              applicationIcon: Image.asset(
                'assets/icon/icon.png',
                height: 30,
              ),
              applicationName: "Application Pôle Yvon Morandat",
              applicationVersion: 'Développée en 2020',
              applicationLegalese: "MIT License\n"
                  "\n"
                  "Copyright (c) 2020\n"
                  "Marc NGUYEN\n"
                  "Axel OUARI\n"
                  "Guillaume GEAYMOND\n"
                  "Mathieu POIGNANT\n"
                  "Franck SEBELON\n"
                  "\n"
                  "Permission is hereby granted, free of charge, to any person obtaining a copy"
                  "of this software and associated documentation files (the \"Software\"), to deal"
                  "in the Software without restriction, including without limitation the rights"
                  "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell"
                  "copies of the Software, and to permit persons to whom the Software is"
                  "furnished to do so, subject to the following conditions:\n"
                  "\n"
                  "The above copyright notice and this permission notice shall be included in all"
                  "copies or substantial portions of the Software.\n"
                  "\n"
                  "THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"
                  "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"
                  "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE"
                  "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"
                  "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
                  "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE"
                  "SOFTWARE.\n",
            ),
          ),
        ],
      ),
    );
  }
}
