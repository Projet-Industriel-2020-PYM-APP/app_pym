import 'package:app_pym/core/constants/mobility.dart';
import 'package:app_pym/data/models/mobility/calendar_model.dart';
import 'package:app_pym/data/models/mobility/route_model.dart';
import 'package:app_pym/data/models/mobility/stop_model.dart';
import 'package:app_pym/data/models/mobility/stop_time_model.dart';
import 'package:app_pym/data/models/mobility/trip_model.dart';
import 'package:app_pym/domain/entities/mobility/calendar.dart';
import 'package:app_pym/domain/entities/mobility/route.dart';
import 'package:app_pym/domain/entities/mobility/stop.dart';
import 'package:app_pym/domain/entities/mobility/stop_time.dart';
import 'package:app_pym/domain/entities/mobility/trip.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const tCalendarModels = [
    CalendarModel(
      service_id: "4977-11-127",
      monday: true,
      tuesday: true,
      wednesday: true,
      thursday: true,
      friday: true,
      saturday: false,
      sunday: false,
      start_date: "20191026",
      end_date: "20201010",
    ),
    CalendarModel(
      service_id: "0",
      monday: false,
      tuesday: false,
      wednesday: false,
      thursday: false,
      friday: false,
      saturday: false,
      sunday: false,
      start_date: "20191026",
      end_date: "20201010",
    )
  ];
  const tStopModels = <StopModel>[
    StopModel(
      stop_id: "133305",
      stop_code: "1021",
      stop_name: "Centre",
      stop_lat: "43.6211020893",
      stop_long: "5.298032832",
      location_type: 0,
    ),
    StopModel(
      stop_id: "133306",
      stop_code: "1020",
      stop_name: "Centre 2",
      stop_lat: "43.6211020893",
      stop_long: "5.298032832",
      location_type: 0,
    ),
  ];
  const tStopTimeModels = [
    StopTimeModel(
      trip_id: "737841",
      arrival_time: "06:00:00",
      departure_time: "06:00:00",
      stop_id: "133305",
      stop_sequence: "1",
    ),
    StopTimeModel(
      trip_id: "737842",
      arrival_time: "06:00:00",
      departure_time: "06:00:00",
      stop_id: "133306",
      stop_sequence: "1",
    ),
  ];
  const tTripModels = [
    TripModel(
      service_id: "4977-11-127",
      route_id: "100",
      trip_id: "737841",
      trip_headsign: "AIX-EN-PROVENCE",
      direction_id: Sens.Aller,
    ),
    TripModel(
      service_id: "4",
      route_id: "101",
      trip_id: "737842",
      trip_headsign: "AIX-EN-PROVENCE",
      direction_id: Sens.Aller,
    ),
  ];

  const model = RouteModel(
    route_id: "100",
    route_short_name: "812",
    route_long_name: "Paris-Vernon-Rouen-Le Havre",
  );

  const entity = Route(
      route_id: "100",
      route_short_name: "812",
      route_long_name: "Paris-Vernon-Rouen-Le Havre",
      trips: [
        Trip(
          service_id: "4977-11-127",
          route_id: "100",
          trip_id: "737841",
          trip_headsign: "AIX-EN-PROVENCE",
          direction_id: Sens.Aller,
          calendar: Calendar(
            service_id: "4977-11-127",
            weekdays: [
              true,
              true,
              true,
              true,
              true,
              false,
              false,
            ],
            start_date: "20191026",
            end_date: "20201010",
          ),
          stop_time: [
            StopTime(
              trip_id: "737841",
              arrival_time: "06:00:00",
              departure_time: "06:00:00",
              stop_id: "133305",
              stop_sequence: "1",
              stop: Stop(
                stop_id: "133305",
                stop_code: "1021",
                stop_name: "Centre",
                stop_lat: "43.6211020893",
                stop_long: "5.298032832",
                location_type: 0,
              ),
            ),
          ],
        ),
      ]);

  group('toEntity', () {
    test(
      'should return a valid entity',
      () async {
        // act
        final result = model.toEntity(
          stopModels: tStopModels,
          calendarModels: tCalendarModels,
          stopTimeModels: tStopTimeModels,
          tripModels: tTripModels,
        );
        // assert
        expect(result, equals(entity));
      },
    );
  });
}
