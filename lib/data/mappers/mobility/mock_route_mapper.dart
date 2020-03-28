import 'package:app_pym/data/mappers/mobility/route_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(RouteMapper)
class MockRouteMapper extends Mock implements RouteMapper {}
