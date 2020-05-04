import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(BookingRepository)
@injectable
class MockBookingRepository extends Mock implements BookingRepository {}
