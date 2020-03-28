import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:flutter/material.dart';

class BusAllerDisplay extends StatelessWidget {
  final List<Bus> bus;

  const BusAllerDisplay({
    Key key,
    this.bus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Column(
        children: <Widget>[
          Text("ZA Avon > 8 mai 1945"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RotatedBox(quarterTurns: 1, child: Text(" ")),
              RotatedBox(quarterTurns: 1, child: Text(busAllerStopList[0])),
              RotatedBox(quarterTurns: 1, child: Text(busAllerStopList[1])),
              RotatedBox(quarterTurns: 1, child: Text(busAllerStopList[2])),
              RotatedBox(quarterTurns: 1, child: Text(busAllerStopList[3])),
              RotatedBox(quarterTurns: 1, child: Text(busAllerStopList[4])),
            ],
          ),
          ListView.builder(
            itemCount: (bus.length ~/ busAllerStopList.length),
            itemBuilder: (BuildContext context, int index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(bus[index * bus.length].days),
                Text(bus[index * bus.length].time),
                Text(bus[index * bus.length + 1].time),
                Text(bus[index * bus.length + 2].time),
                Text(bus[index * bus.length + 3].time),
                Text(bus[index * bus.length + 4].time),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
