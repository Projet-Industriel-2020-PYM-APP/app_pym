import 'package:app_pym/data/datasources/blogger_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(BloggerLocalDataSource)
class MockBloggerLocalDataSource extends Mock
    implements BloggerLocalDataSource {}
