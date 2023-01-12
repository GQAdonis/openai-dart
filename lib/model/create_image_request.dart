//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openai.api;

class CreateImageRequest {
  /// Returns a new [CreateImageRequest] instance.
  CreateImageRequest({
    required this.prompt,
    this.n = 1,
    this.size = const CreateImageRequestSizeEnum._('1024x1024'),
    this.responseFormat = const CreateImageRequestResponseFormatEnum._('url'),
    this.user,
  });

  /// A text description of the desired image(s). The maximum length is 1000 characters.
  String prompt;

  /// The number of images to generate. Must be between 1 and 10.
  ///
  /// Minimum value: 1
  /// Maximum value: 10
  int? n;

  /// The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
  CreateImageRequestSizeEnum? size;

  /// The format in which the generated images are returned. Must be one of `url` or `b64_json`.
  CreateImageRequestResponseFormatEnum? responseFormat;

  /// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateImageRequest &&
     other.prompt == prompt &&
     other.n == n &&
     other.size == size &&
     other.responseFormat == responseFormat &&
     other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (prompt.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (responseFormat == null ? 0 : responseFormat!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'CreateImageRequest[prompt=$prompt, n=$n, size=$size, responseFormat=$responseFormat, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'prompt'] = this.prompt;
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.responseFormat != null) {
      json[r'response_format'] = this.responseFormat;
    } else {
      json[r'response_format'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [CreateImageRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateImageRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateImageRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateImageRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateImageRequest(
        prompt: mapValueOfType<String>(json, r'prompt')!,
        n: mapValueOfType<int>(json, r'n') ?? 1,
        size: CreateImageRequestSizeEnum.fromJson(json[r'size']) ?? '1024x1024',
        responseFormat: CreateImageRequestResponseFormatEnum.fromJson(json[r'response_format']) ?? 'url',
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<CreateImageRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateImageRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateImageRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateImageRequest> mapFromJson(dynamic json) {
    final map = <String, CreateImageRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateImageRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateImageRequest-objects as value to a dart map
  static Map<String, List<CreateImageRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateImageRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateImageRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'prompt',
  };
}

/// The size of the generated images. Must be one of `256x256`, `512x512`, or `1024x1024`.
class CreateImageRequestSizeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateImageRequestSizeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n256x256 = CreateImageRequestSizeEnum._(r'256x256');
  static const n512x512 = CreateImageRequestSizeEnum._(r'512x512');
  static const n1024x1024 = CreateImageRequestSizeEnum._(r'1024x1024');

  /// List of all possible values in this [enum][CreateImageRequestSizeEnum].
  static const values = <CreateImageRequestSizeEnum>[
    n256x256,
    n512x512,
    n1024x1024,
  ];

  static CreateImageRequestSizeEnum? fromJson(dynamic value) => CreateImageRequestSizeEnumTypeTransformer().decode(value);

  static List<CreateImageRequestSizeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateImageRequestSizeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateImageRequestSizeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateImageRequestSizeEnum] to String,
/// and [decode] dynamic data back to [CreateImageRequestSizeEnum].
class CreateImageRequestSizeEnumTypeTransformer {
  factory CreateImageRequestSizeEnumTypeTransformer() => _instance ??= const CreateImageRequestSizeEnumTypeTransformer._();

  const CreateImageRequestSizeEnumTypeTransformer._();

  String encode(CreateImageRequestSizeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateImageRequestSizeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateImageRequestSizeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'256x256': return CreateImageRequestSizeEnum.n256x256;
        case r'512x512': return CreateImageRequestSizeEnum.n512x512;
        case r'1024x1024': return CreateImageRequestSizeEnum.n1024x1024;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateImageRequestSizeEnumTypeTransformer] instance.
  static CreateImageRequestSizeEnumTypeTransformer? _instance;
}


/// The format in which the generated images are returned. Must be one of `url` or `b64_json`.
class CreateImageRequestResponseFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateImageRequestResponseFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const url = CreateImageRequestResponseFormatEnum._(r'url');
  static const b64Json = CreateImageRequestResponseFormatEnum._(r'b64_json');

  /// List of all possible values in this [enum][CreateImageRequestResponseFormatEnum].
  static const values = <CreateImageRequestResponseFormatEnum>[
    url,
    b64Json,
  ];

  static CreateImageRequestResponseFormatEnum? fromJson(dynamic value) => CreateImageRequestResponseFormatEnumTypeTransformer().decode(value);

  static List<CreateImageRequestResponseFormatEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateImageRequestResponseFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateImageRequestResponseFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateImageRequestResponseFormatEnum] to String,
/// and [decode] dynamic data back to [CreateImageRequestResponseFormatEnum].
class CreateImageRequestResponseFormatEnumTypeTransformer {
  factory CreateImageRequestResponseFormatEnumTypeTransformer() => _instance ??= const CreateImageRequestResponseFormatEnumTypeTransformer._();

  const CreateImageRequestResponseFormatEnumTypeTransformer._();

  String encode(CreateImageRequestResponseFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateImageRequestResponseFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateImageRequestResponseFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'url': return CreateImageRequestResponseFormatEnum.url;
        case r'b64_json': return CreateImageRequestResponseFormatEnum.b64Json;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateImageRequestResponseFormatEnumTypeTransformer] instance.
  static CreateImageRequestResponseFormatEnumTypeTransformer? _instance;
}


