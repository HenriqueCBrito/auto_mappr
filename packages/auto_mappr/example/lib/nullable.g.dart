// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nullable.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

class $Mapper {
  Type _typeOf<T>() => T;
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    return _convert(model, canReturnNull: false);
  }

  TARGET _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    if ((_typeOf<SOURCE>() == _typeOf<UserDto>() ||
            _typeOf<SOURCE>() == _typeOf<UserDto?>()) &&
        (_typeOf<TARGET>() == _typeOf<User>() ||
            _typeOf<TARGET>() == _typeOf<User?>())) {
      return (_mapUserDtoToUser(
        (model as UserDto?),
        canReturnNull: canReturnNull,
      ) as TARGET);
    }
    if ((_typeOf<SOURCE>() == _typeOf<NestedDto>() ||
            _typeOf<SOURCE>() == _typeOf<NestedDto?>()) &&
        (_typeOf<TARGET>() == _typeOf<Nested>() ||
            _typeOf<TARGET>() == _typeOf<Nested?>())) {
      return (_mapNestedDtoToNested(
        (model as NestedDto?),
        canReturnNull: canReturnNull,
      ) as TARGET);
    }
    throw Exception(
        'No mapping from ${model.runtimeType} -> ${_typeOf<TARGET>()}');
  }

  User? _mapUserDtoToUser(
    UserDto? input, {
    required bool canReturnNull,
  }) {
    final model = input;
    if (model == null) {
      return canReturnNull
          ? null
          : throw Exception(
              'Mapping UserDto -> User when null but no default value provided!');
    }
    final result = User(
      id: model.id,
      tag: model.tag == null
          ? Mapper.defaultNested()
          : (_mapNestedDtoToNested(
              model.tag,
              canReturnNull: false,
            ) as Nested),
      name: _mapNestedDtoToNested(
        model.name,
        canReturnNull: true,
      ),
    );
    return result;
  }

  Nested? _mapNestedDtoToNested(
    NestedDto? input, {
    required bool canReturnNull,
  }) {
    final model = input;
    if (model == null) {
      return canReturnNull
          ? null
          : throw Exception(
              'Mapping NestedDto -> Nested when null but no default value provided!');
    }
    final result = Nested(
      id: model.id,
      name: model.name,
    );
    return result;
  }
}
