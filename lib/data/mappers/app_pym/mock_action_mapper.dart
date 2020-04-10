import 'package:app_pym/data/mappers/app_pym/action_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ActionMapper)
@injectable
class MockActionMapper extends Mock implements ActionMapper {}
