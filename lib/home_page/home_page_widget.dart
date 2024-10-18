import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4DDFF),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 100, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.existingDocument1 =
                                  await queryMoodFeedbackRecordOnce();
                              if (!(_model.existingDocument1 != null &&
                                  (_model.existingDocument1)!.isNotEmpty)) {
                                await MoodFeedbackRecord.collection
                                    .doc()
                                    .set(createMoodFeedbackRecordData(
                                      userID: currentUserUid,
                                      date: FFAppState().currentDateRK,
                                      sadCount: functions.incrementFunction(0),
                                    ));
                              } else {
                                await _model.existingDocument!.reference
                                    .update({
                                  ...mapToFirestore(
                                    {
                                      'sadCount': FieldValue.increment(1),
                                    },
                                  ),
                                });
                                if (_model.existingDocument!.sadCount >= 3) {
                                  _model.apiResultk6g =
                                      await EmailRKCall.call();

                                  if ((_model.apiResultk6g?.succeeded ??
                                      true)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Successful API Call',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  }
                                }
                              }

                              safeSetState(() {});
                            },
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/6637/6637186.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.apiResult2zs = await EmailRKCall.call();

                              if ((_model.apiResult2zs?.succeeded ?? true)) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Thankyou for your feedback!',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Error',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }

                              safeSetState(() {});
                            },
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/6637/6637207.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          StreamBuilder<List<MoodFeedbackRecord>>(
                            stream: queryMoodFeedbackRecord(
                              queryBuilder: (moodFeedbackRecord) =>
                                  moodFeedbackRecord.where(
                                'userID',
                                isEqualTo: currentUserUid,
                              ),
                              limit: 4,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<MoodFeedbackRecord>
                                  imageMoodFeedbackRecordList = snapshot.data!;

                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.existingDocument =
                                      await queryMoodFeedbackRecordOnce(
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  if (!(imageMoodFeedbackRecordList
                                      .isNotEmpty)) {
                                    await MoodFeedbackRecord.collection
                                        .doc()
                                        .set(createMoodFeedbackRecordData(
                                          userID: currentUserUid,
                                          date: FFAppState().currentDateRK,
                                          happyCount:
                                              functions.incrementFunction(0),
                                          averageCount: 0,
                                          sadCount: 0,
                                        ));
                                  } else {
                                    await _model.existingDocument!.reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'happyCount': FieldValue.increment(1),
                                        },
                                      ),
                                    });
                                    if (_model.existingDocument!.happyCount >=
                                        10) {
                                      unawaited(
                                        () async {
                                          await launchUrl(Uri(
                                              scheme: 'mailto',
                                              path: currentUserEmail,
                                              query: {
                                                'subject':
                                                    'Intelens Mood Feedback',
                                                'body':
                                                    'Great going! Your student is doing well',
                                              }
                                                  .entries
                                                  .map((MapEntry<String, String>
                                                          e) =>
                                                      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                                  .join('&')));
                                        }(),
                                      );
                                    }
                                  }

                                  safeSetState(() {});
                                },
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/6637/6637168.png',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: [],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x33000000),
                              offset: Offset(
                                0,
                                -1,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.84, -0.63),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  // GotoGames

                                  context.pushNamed('LearningRK');
                                },
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8466DF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.black,
                                        offset: Offset(
                                          5,
                                          2,
                                        ),
                                        spreadRadius: 5,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Align(
                                    alignment:
                                        AlignmentDirectional(0.04, -0.37),
                                    child: FaIcon(
                                      FontAwesomeIcons.bookOpen,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.8, -0.63),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Speech');
                                },
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF47AEC5),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.black,
                                        offset: Offset(
                                          5,
                                          2,
                                        ),
                                        spreadRadius: 5,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.11, 0.76),
                              child: Icon(
                                Icons.message_rounded,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.06, 0.02),
                              child: FaIcon(
                                FontAwesomeIcons.handsHelping,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.57, -0.57),
                              child: FaIcon(
                                FontAwesomeIcons.user,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.11, 0.76),
                              child: Container(
                                width: 368,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4C71F6),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.38, 0.72),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer1 ??= AudioPlayer();
                                  if (_model.soundPlayer1!.playing) {
                                    await _model.soundPlayer1!.stop();
                                  }
                                  _model.soundPlayer1!.setVolume(1);
                                  _model.soundPlayer1!
                                      .setAsset(
                                          'assets/audios/please-calm-my-mind-125566.mp3')
                                      .then((_) => _model.soundPlayer1!.play());
                                },
                                onDoubleTap: () async {
                                  _model.soundPlayer1?.stop();
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.backward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.12, 0.74),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer2 ??= AudioPlayer();
                                  if (_model.soundPlayer2!.playing) {
                                    await _model.soundPlayer2!.stop();
                                  }
                                  _model.soundPlayer2!.setVolume(1);
                                  _model.soundPlayer2!
                                      .setAsset(
                                          'assets/audios/perfect-beauty-191271.mp3')
                                      .then((_) => _model.soundPlayer2!.play());
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.solidPlayCircle,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.38, 0.72),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer3 ??= AudioPlayer();
                                  if (_model.soundPlayer3!.playing) {
                                    await _model.soundPlayer3!.stop();
                                  }
                                  _model.soundPlayer3!.setVolume(1);
                                  _model.soundPlayer3!
                                      .setAsset(
                                          'assets/audios/moonlight-echoes-212720.mp3')
                                      .then((_) => _model.soundPlayer3!.play());
                                },
                                onDoubleTap: () async {
                                  _model.soundPlayer3?.stop();
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.forward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.1),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  // GotoLifeSkills

                                  context.pushNamed(
                                    'LifeSkills',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF16C68),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.black,
                                        offset: Offset(
                                          5,
                                          2,
                                        ),
                                        spreadRadius: 5,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.04),
                              child: Icon(
                                Icons.handshake,
                                color: Color(0xFFFDFEFF),
                                size: 65,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.93, 0.07),
                              child: Container(
                                width: 70,
                                height: 82,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.12, 0.74),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer2?.stop();
                                },
                                child: Icon(
                                  Icons.pause_circle_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 38,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.87, -0.44),
              child: Text(
                'Let\'s begin our journey',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.black,
                      fontSize: 22,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.61, -0.08),
              child: Text(
                'Speech',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.04, 0.36),
              child: Text(
                'Lifeskills',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.61, -0.09),
              child: Text(
                'Learning',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.02, -0.87),
              child: Text(
                'How are you feeling today?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.black,
                      fontSize: 25,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.87, 0.69),
              child: Text(
                'Calming Music',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.black,
                      fontSize: 22,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
