import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'counting_game_model.dart';
export 'counting_game_model.dart';

class CountingGameWidget extends StatefulWidget {
  const CountingGameWidget({super.key});

  @override
  State<CountingGameWidget> createState() => _CountingGameWidgetState();
}

class _CountingGameWidgetState extends State<CountingGameWidget> {
  late CountingGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountingGameModel());
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
              Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Stack(
                                        children: [
                                          Stack(
                                            children: [
                                              Stack(
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              Stack(
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0, -1),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(24),
                                                                                  child: GridView(
                                                                                    padding: EdgeInsets.zero,
                                                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                      crossAxisCount: 2,
                                                                                      crossAxisSpacing: 2,
                                                                                      childAspectRatio: 1,
                                                                                    ),
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                          child: Image.asset(
                                                                                            'assets/images/3_icecreams_jpg_RK.jpg',
                                                                                            width: 100,
                                                                                            height: 100,
                                                                                            fit: BoxFit.fitWidth,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    context.pushNamed('correct_ans');
                                                                                                  },
                                                                                                  text: '3',
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 40,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                          fontFamily: 'Outfit',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                    elevation: 3,
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Colors.transparent,
                                                                                                      width: 1,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                ),
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    context.pushNamed('Incorrect_ans');
                                                                                                  },
                                                                                                  text: '5',
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 40,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                          fontFamily: 'Outfit',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                    elevation: 3,
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Colors.transparent,
                                                                                                      width: 1,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                ),
                                                                                                FFButtonWidget(
                                                                                                  onPressed: () async {
                                                                                                    context.pushNamed('Incorrect_ans');
                                                                                                  },
                                                                                                  text: '7',
                                                                                                  options: FFButtonOptions(
                                                                                                    height: 40,
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                          fontFamily: 'Outfit',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                    elevation: 3,
                                                                                                    borderSide: BorderSide(
                                                                                                      color: Colors.transparent,
                                                                                                      width: 1,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                                  ),
                                                                                                ),
                                                                                              ].divide(SizedBox(height: 15)),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 19)).addToStart(SizedBox(height: 10)),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Cars_jpg.jpg',
                                                                                            width: 300,
                                                                                            height: 200,
                                                                                            fit: BoxFit.fitWidth,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('Incorrect_ans');
                                                                                              },
                                                                                              text: '8',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('correct_ans');
                                                                                              },
                                                                                              text: '2',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('Incorrect_ans');
                                                                                              },
                                                                                              text: '1',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                              child: Image.network(
                                                                                                'https://picsum.photos/seed/731/600',
                                                                                                width: 300,
                                                                                                height: 200,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 15)).addToStart(SizedBox(height: 10)),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                              child: Image.asset(
                                                                                                'assets/images/5_balloons_JPG.jpg',
                                                                                                width: 300,
                                                                                                height: 200,
                                                                                                fit: BoxFit.fitWidth,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('Incorrect_ans');
                                                                                              },
                                                                                              text: '7',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('Incorrect_ans');
                                                                                              },
                                                                                              text: '6',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('correct_ans');
                                                                                              },
                                                                                              text: '5',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 15)).addToStart(SizedBox(height: 10)),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Honey_Bee_RK.webp',
                                                                                            width: 241,
                                                                                            height: 135,
                                                                                            fit: BoxFit.fitHeight,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100,
                                                                                        height: 100,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            width: 1,
                                                                                          ),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('Incorrect_ans');
                                                                                              },
                                                                                              text: '2',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('correct_ans');
                                                                                              },
                                                                                              text: '1',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                context.pushNamed('Incorrect_ans');
                                                                                              },
                                                                                              text: '0',
                                                                                              options: FFButtonOptions(
                                                                                                height: 40,
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                textStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                                elevation: 3,
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 15)).addToStart(SizedBox(height: 10)),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.98, -1.04),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // Back to Learning

                        context.goNamed('LearningRK');
                      },
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.3, -1),
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
                            'assets/audios/ttsMP3.com_VoiceText_2024-8-27_11-27-25.mp3')
                        .then((_) => _model.soundPlayer!.play());
                  },
                  child: Text(
                    'Select correct number of items for each image!',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
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
