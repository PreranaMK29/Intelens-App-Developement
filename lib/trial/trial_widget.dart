import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'trial_model.dart';
export 'trial_model.dart';

class TrialWidget extends StatefulWidget {
  const TrialWidget({super.key});

  @override
  State<TrialWidget> createState() => _TrialWidgetState();
}

class _TrialWidgetState extends State<TrialWidget> {
  late TrialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrialModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Draggable<Color>(
                      data: Color(0xFFFFA500),
                      feedback: Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFA500),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFA500),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    ),
                    Draggable<Color>(
                      data: Color(0xFFCF1FCB),
                      feedback: Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFCF1FCB),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFCF1FCB),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    ),
                    Draggable<Color>(
                      data: Color(0xFF008000),
                      feedback: Material(
                        type: MaterialType.transparency,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF008000),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF008000),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: DragTarget<Color>(
                  onAcceptWithDetails: (details) async {
                    _model.colour = valueOrDefault<Color>(
                      details.data,
                      FlutterFlowTheme.of(context).secondaryBackground,
                    );
                    safeSetState(() {});
                    if (details.data == Color(0xFFFFA500)) {
                      context.pushNamed('correct_co');
                    } else {
                      context.pushNamed('incorrect_co');
                    }

                    safeSetState(() {});
                  },
                  builder: (context, _, __) {
                    return Align(
                      alignment: AlignmentDirectional(-0.09, -0.05),
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            _model.colour,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, -0.47),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/649/649738.png',
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.86, -0.06),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://e7.pngegg.com/pngimages/126/679/png-clipart-right-triangle-triangular-arrow-angle-rectangle-thumbnail.png',
                    width: 50,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.98, -0.06),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/21/21256.png',
                    width: 72,
                    height: 60,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.43),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/21/21051.png',
                    width: 50,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.66, 0.23),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.59, -0.34),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.68, -0.34),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.73, 0.23),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 2,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, -0.99),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.soundPlayer ??= AudioPlayer();
                    if (_model.soundPlayer!.playing) {
                      await _model.soundPlayer!.stop();
                    }
                    _model.soundPlayer!.setVolume(1);
                    _model.soundPlayer!
                        .setAsset(
                            'assets/audios/ttsMP3.com_VoiceText_2024-8-27_11-39-14.mp3')
                        .then((_) => _model.soundPlayer!.play());
                  },
                  child: Text(
                    'WHICH COLOR IS THE SUN??',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, 0.8),
                child: Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF3FA2CC),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Text(
                      'DID YOU KNOW:  The Sun is like a giant, glowing ball in the sky. It shines bright and makes the day light up!\n\n',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.89, -1.02),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('LearningRK');
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('LearningRK');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Back_Arrow.svg/2048px-Back_Arrow.svg.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
