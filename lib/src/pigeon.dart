// Autogenerated from Pigeon (v1.0.14), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class InitializeRequest {
  String? accountKey;
  String? appId;
  String? deviceToken;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['accountKey'] = accountKey;
    pigeonMap['appId'] = appId;
    pigeonMap['deviceToken'] = deviceToken;
    return pigeonMap;
  }

  static InitializeRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return InitializeRequest()
      ..accountKey = pigeonMap['accountKey'] as String?
      ..appId = pigeonMap['appId'] as String?
      ..deviceToken = pigeonMap['deviceToken'] as String?;
  }
}

class SetDepartmentRequest {
  String? department;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['department'] = department;
    return pigeonMap;
  }

  static SetDepartmentRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return SetDepartmentRequest()
      ..department = pigeonMap['department'] as String?;
  }
}

class StartChatRequest {
  bool? isPreChatFormEnabled;
  bool? isOfflineFormEnabled;
  bool? isAgentAvailabilityEnabled;
  bool? isChatTranscriptPromptEnabled;
  String? messagingName;
  String? iosBackButtonTitle;
  int? iosNavigationBarColor;
  int? iosNavigationTitleColor;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['isPreChatFormEnabled'] = isPreChatFormEnabled;
    pigeonMap['isOfflineFormEnabled'] = isOfflineFormEnabled;
    pigeonMap['isAgentAvailabilityEnabled'] = isAgentAvailabilityEnabled;
    pigeonMap['isChatTranscriptPromptEnabled'] = isChatTranscriptPromptEnabled;
    pigeonMap['messagingName'] = messagingName;
    pigeonMap['iosBackButtonTitle'] = iosBackButtonTitle;
    pigeonMap['iosNavigationBarColor'] = iosNavigationBarColor;
    pigeonMap['iosNavigationTitleColor'] = iosNavigationTitleColor;
    return pigeonMap;
  }

  static StartChatRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return StartChatRequest()
      ..isPreChatFormEnabled = pigeonMap['isPreChatFormEnabled'] as bool?
      ..isOfflineFormEnabled = pigeonMap['isOfflineFormEnabled'] as bool?
      ..isAgentAvailabilityEnabled = pigeonMap['isAgentAvailabilityEnabled'] as bool?
      ..isChatTranscriptPromptEnabled = pigeonMap['isChatTranscriptPromptEnabled'] as bool?
      ..messagingName = pigeonMap['messagingName'] as String?
      ..iosBackButtonTitle = pigeonMap['iosBackButtonTitle'] as String?
      ..iosNavigationBarColor = pigeonMap['iosNavigationBarColor'] as int?
      ..iosNavigationTitleColor = pigeonMap['iosNavigationTitleColor'] as int?;
  }
}

class SetVisitorInfoRequest {
  String? name;
  String? email;
  String? phoneNumber;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['name'] = name;
    pigeonMap['email'] = email;
    pigeonMap['phoneNumber'] = phoneNumber;
    return pigeonMap;
  }

  static SetVisitorInfoRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return SetVisitorInfoRequest()
      ..name = pigeonMap['name'] as String?
      ..email = pigeonMap['email'] as String?
      ..phoneNumber = pigeonMap['phoneNumber'] as String?;
  }
}

class VisitorTagsRequest {
  List<String?>? tags;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['tags'] = tags;
    return pigeonMap;
  }

  static VisitorTagsRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return VisitorTagsRequest()
      ..tags = (pigeonMap['tags'] as List<Object?>?)?.cast<String?>();
  }
}

class VisitorNoteRequest {
  String? note;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['note'] = note;
    return pigeonMap;
  }

  static VisitorNoteRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return VisitorNoteRequest()
      ..note = pigeonMap['note'] as String?;
  }
}

class _ChatApiCodec extends StandardMessageCodec {
  const _ChatApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is InitializeRequest) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is SetDepartmentRequest) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is StartChatRequest) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return InitializeRequest.decode(readValue(buffer)!);
      
      case 129:       
        return SetDepartmentRequest.decode(readValue(buffer)!);
      
      case 130:       
        return StartChatRequest.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class ChatApi {
  /// Constructor for [ChatApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  ChatApi({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _ChatApiCodec();

  Future<void> initialize(InitializeRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatApi.initialize', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setDepartment(SetDepartmentRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatApi.setDepartment', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> startChat(StartChatRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ChatApi.startChat', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}

class _ProfileApiCodec extends StandardMessageCodec {
  const _ProfileApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is SetVisitorInfoRequest) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else 
    if (value is VisitorNoteRequest) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else 
    if (value is VisitorTagsRequest) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else 
{
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:       
        return SetVisitorInfoRequest.decode(readValue(buffer)!);
      
      case 129:       
        return VisitorNoteRequest.decode(readValue(buffer)!);
      
      case 130:       
        return VisitorTagsRequest.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class ProfileApi {
  /// Constructor for [ProfileApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  ProfileApi({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _ProfileApiCodec();

  Future<void> setVisitorInfo(SetVisitorInfoRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProfileApi.setVisitorInfo', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> addVisitorTags(VisitorTagsRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProfileApi.addVisitorTags', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> removeVisitorTags(VisitorTagsRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProfileApi.removeVisitorTags', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> setVisitorNote(VisitorNoteRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProfileApi.setVisitorNote', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> appendVisitorNote(VisitorNoteRequest arg_request) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProfileApi.appendVisitorNote', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object>[arg_request]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> clearVisitorNotes() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProfileApi.clearVisitorNotes', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}
