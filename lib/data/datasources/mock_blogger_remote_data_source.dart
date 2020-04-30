import 'package:app_pym/data/datasources/blogger_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@injectable
@RegisterAs(BloggerRemoteDataSource)
class MockBloggerRemoteDataSource extends Mock
    implements BloggerRemoteDataSource {}
