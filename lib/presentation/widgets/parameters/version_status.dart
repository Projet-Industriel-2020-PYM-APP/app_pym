import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class VersionStatus extends StatelessWidget {
  const VersionStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Padding(padding: EdgeInsets.all(16.0)),
      title: const Text("Version"),
      subtitle: FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          if (snapshot.hasData) {
            return Text(
                "${snapshot.data.version}+${snapshot.data.buildNumber}");
          } else {
            return const Text("En chargement...");
          }
        },
      ),
    );
  }
}
