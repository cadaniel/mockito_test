// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../moor/database.dart' as _i3;
import '../service/service.dart' as _i5;
import 'database_module.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.UserDao>(() => _i3.UserDao(get<_i4.DatabaseModule>()));
  gh.factory<_i5.SampleService>(() => _i5.SampleService(get<_i3.UserDao>()));
  gh.singleton<_i4.DatabaseModule>(_i4.DatabaseModule());
  return get;
}
