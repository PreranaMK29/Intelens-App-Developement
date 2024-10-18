import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Image widget.
  List<MoodFeedbackRecord>? existingDocument1;
  // Stores action output result for [Backend Call - API (EmailRK)] action in Image widget.
  ApiCallResponse? apiResultk6g;
  // Stores action output result for [Backend Call - API (EmailRK)] action in Image widget.
  ApiCallResponse? apiResult2zs;
  // Stores action output result for [Firestore Query - Query a collection] action in Image widget.
  MoodFeedbackRecord? existingDocument;
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
