import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'trial_widget.dart' show TrialWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class TrialModel extends FlutterFlowModel<TrialWidget> {
  ///  Local state fields for this page.

  Color colour = Color(4294967295);

  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
