// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      cnpj: json['cnpj'] as String,
      phone: json['phone'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'cnpj': instance.cnpj,
      'phone': instance.phone,
      'runtimeType': instance.$type,
    };

_$NotLoggedUserImpl _$$NotLoggedUserImplFromJson(Map<String, dynamic> json) =>
    _$NotLoggedUserImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotLoggedUserImplToJson(_$NotLoggedUserImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoggedUserImpl _$$LoggedUserImplFromJson(Map<String, dynamic> json) =>
    _$LoggedUserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      cnpj: json['cnpj'] as String,
      phone: json['phone'] as String,
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoggedUserImplToJson(_$LoggedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'cnpj': instance.cnpj,
      'phone': instance.phone,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'runtimeType': instance.$type,
    };
