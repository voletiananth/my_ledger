// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/data/datasources/auth_datasource.dart'
    as _i5;
import '../../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i7;
import '../../features/authentication/domain/repositories/auth_repository.dart'
    as _i6;
import '../../features/authentication/domain/usecases/auth_check_usecase.dart'
    as _i10;
import '../../features/authentication/domain/usecases/otp_usecase.dart' as _i8;
import '../../features/authentication/domain/usecases/phone_number_usecase.dart'
    as _i9;
import '../../features/authentication/presentation/logic_holders/authentication/authentication_cubit.dart'
    as _i13;
import '../../features/authentication/presentation/logic_holders/authentication/authentication_state.dart'
    as _i11;
import '../../features/authentication/presentation/logic_holders/mobile_number/mobile_number_cubit.dart'
    as _i12;
import '../../features/home/presentation/logic_holders/bottom_bar/bottom_bar_cubit.dart'
    as _i3;
import 'repository_module.dart' as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i5.AuthDataSource>(
      () => _i5.AuthRemoteDataSourceImpl(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i6.AuthRepository>(
      () => _i7.AuthRepositoryImpl(get<_i5.AuthDataSource>()));
  gh.lazySingleton<_i8.OtpUseCase>(
      () => _i8.OtpUseCase(get<_i6.AuthRepository>()));
  gh.lazySingleton<_i9.PhoneNumberUseCase>(
      () => _i9.PhoneNumberUseCase(get<_i6.AuthRepository>()));
  gh.lazySingleton<_i10.AuthCheckUseCase>(
      () => _i10.AuthCheckUseCase(get<_i6.AuthRepository>()));
  await gh.factoryAsync<_i11.AuthState>(
      () => authModule.check(get<_i10.AuthCheckUseCase>()),
      instanceName: 'AuthCheck',
      preResolve: true);
  gh.factory<_i12.MobileNumberCubit>(() => _i12.MobileNumberCubit(
      get<_i9.PhoneNumberUseCase>(), get<_i8.OtpUseCase>()));
  gh.factory<_i13.AuthCubit>(
      () => _i13.AuthCubit(get<_i11.AuthState>(instanceName: 'AuthCheck')));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}

class _$AuthModule extends _i13.AuthModule {}
