import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:flutter/material.dart';

class AutresTransports extends StatelessWidget {
  const AutresTransports({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 4.0,
      top: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            height: 50.0,
            width: 50.0,
            child: Card(
              child: Tooltip(
                message: "BlaBlaCar",
                child: InkWell(
                  onTap: () =>
                      UrlLauncherUtils.launch("https://www.blablacar.fr/"),
                  child: Image.asset(
                    "assets/images/mobilite/Logo_BlaBlaCar.png",
                    fit: BoxFit.contain,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Theme.of(context).textTheme.bodyText1.color
                        : null,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            height: 50.0,
            width: 50.0,
            child: Card(
              margin: const EdgeInsets.all(5.0),
              child: Tooltip(
                message: "Uber",
                child: InkWell(
                  onTap: () => UrlLauncherUtils.launch("https://www.uber.com/"),
                  child: Image.asset(
                    "assets/images/mobilite/Logo_Uber.png",
                    fit: BoxFit.contain,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Theme.of(context).textTheme.bodyText1.color
                        : null,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
