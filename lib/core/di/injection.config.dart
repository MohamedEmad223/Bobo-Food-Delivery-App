// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bobo_food_delivery_app/core/di/shared_preferences_module.dart'
    as _i547;
import 'package:bobo_food_delivery_app/core/theme/cubit/cubit/theme_cubit.dart'
    as _i1067;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final sharedPreferencesModule = _$SharedPreferencesModule();
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i1067.ThemeCubit>(
      () => _i1067.ThemeCubit(gh<_i460.SharedPreferences>()),
    );
    return this;
  }
}

class _$SharedPreferencesModule extends _i547.SharedPreferencesModule {}
