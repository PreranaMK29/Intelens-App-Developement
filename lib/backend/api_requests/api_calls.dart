import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EmailRKCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "preethi14nt@gmail.com"
        }
      ],
      "subject": "Intelens Mood Feedback"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "Your student is faring well, but please do check on him/her every once in a while:)"
    }
  ],
  "from": {
    "email": "preethi.cs22@bmsce.ac.in",
    "name": "PRPAppTeam"
  },
  "reply_to": {
    "email": "preethi.cs22@bmsce.ac.in",
    "name": "PRPAppTeam"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EmailRK',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
