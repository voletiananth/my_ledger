// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/datasources/auth_datasource.dart'
    as _i6;
import '../../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i8;
import '../../features/authentication/domain/repositories/auth_repository.dart'
    as _i7;
import '../../features/authentication/domain/usecases/auth_check_usecase.dart'
    as _i11;
import '../../features/authentication/domain/usecases/otp_usecase.dart' as _i9;
import '../../features/authentication/domain/usecases/phone_number_usecase.dart'
    as _i10;
import '../../features/authentication/presentation/logic_holders/authentication/authentication_cubit.dart'
    as _i15;
import '../../features/authentication/presentation/logic_holders/authentication/authentication_state.dart'
    as _i12;
import '../../features/authentication/presentation/logic_holders/mobile_number/mobile_number_cubit.dart'
    as _i13;
import '../../features/authentication/presentation/logic_holders/otp/otp_cubit.dart'
    as _i14;
import '../../features/home/presentation/logic_holders/bottom_bar/bottom_bar_cubit.dart'
    as _i3;
import '../loading_hud/logic_holders/loading_hud_cubit.dart' as _i5;
import 'repository_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final authModule = _$AuthModule();
  gh.factory<_i3.BottomBarCubit>(() => _i3.BottomBarCubit());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i5.ProgressHudCubit>(() => _i5.ProgressHudCubit());
  gh.lazySingleton<_i6.AuthDataSource>(
      () => _i6.AuthRemoteDataSourceImpl(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i7.AuthRepository>(
      () => _i8.AuthRepositoryImpl(get<_i6.AuthDataSource>()));
  gh.lazySingleton<_i9.OtpUseCase>(
      () => _i9.OtpUseCase(get<_i7.AuthRepository>()));
  gh.lazySingleton<_i10.PhoneNumberUseCase>(
      () => _i10.PhoneNumberUseCase(get<_i7.AuthRepository>()));
  gh.lazySingleton<_i11.AuthCheckUseCase>(
      () => _i11.AuthCheckUseCase(get<_i7.AuthRepository>()));
  await gh.factoryAsync<_i12.AuthState>(
      () => authModule.check(get<_i11.AuthCheckUseCase>()),
      instanceName: 'AuthCheck',
      preResolve: true);
  gh.factory<_i13.MobileNumberCubit>(
      () => _i13.MobileNumberCubit(get<_i10.PhoneNumberUseCase>()));
  gh.factory<_i14.OtpCubit>(() => _i14.OtpCubit(get<_i9.OtpUseCase>()));
  gh.factory<_i15.AuthCubit>(
      () => _i15.AuthCubit(get<_i12.AuthState>(instanceName: 'AuthCheck')));
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}

class _$AuthModule extends _i15.AuthModule {}
