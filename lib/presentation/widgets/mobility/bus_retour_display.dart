import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/domain/entities/mobility/bus.dart';
import 'package:flutter/material.dart';

class BusRetourDisplay extends StatelessWidget {
  final List<Bus> bus;

  const BusRetourDisplay({
    Key key,
    this.bus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Column(
        children: <Widget>[
          const Text("8 mai 1945 > ZA Avon"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const RotatedBox(quarterTurns: 1, child: Text(" ")),
              RotatedBox(
                quarterTurns: 1,
                child: Text(MobilityConstants.busRetourStopList[0]),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(MobilityConstants.busRetourStopList[1]),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(MobilityConstants.busRetourStopList[2]),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(MobilityConstants.busRetourStopList[3]),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(MobilityConstants.busRetourStopList[4]),
              ),
            ],
          ),
          ListView.builder(
            itemCount: bus.length ~/ MobilityConstants.busRetourStopList.length,
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
