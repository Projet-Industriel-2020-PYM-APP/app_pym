import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/presentation/widgets/services/action_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Action;

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: <Widget>[
          if (service.img_url != null && service.img_url.isNotEmpty)
            buildImage(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: service.title + '\n',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            TextSpan(
                              text: service.subtitle,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ButtonBar(
                        buttonTextTheme: ButtonTextTheme.primary,
                        children: service.actions
                            .map((e) => ActionButton(e, service: service))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AspectRatio buildImage() {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: CachedNetworkImage(
        imageUrl: service.img_url,
        fit: BoxFit.fitHeight,
        errorWidget: (context, url, dynamic error) {
          print(error);
          return Center(
            child: Text(error.toString()),
          );
        },
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return Center(
            child: CircularProgressIndicator(
              value: downloadProgress.progress,
            ),
          );
        },
      ),
    );
  }
}
