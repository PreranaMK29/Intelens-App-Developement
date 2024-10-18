import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'animal_sound_model.dart';
export 'animal_sound_model.dart';

class AnimalSoundWidget extends StatefulWidget {
  const AnimalSoundWidget({super.key});

  @override
  State<AnimalSoundWidget> createState() => _AnimalSoundWidgetState();
}

class _AnimalSoundWidgetState extends State<AnimalSoundWidget> {
  late AnimalSoundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimalSoundModel());
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.rectangle,
                              ),
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
                                          'assets/audios/cow-mooing-loudly-223546.mp3')
                                      .then((_) => _model.soundPlayer1!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.network(
                                    'https://media.istockphoto.com/id/1349945418/photo/cute-cow-isolated-on-white-black-mottled-gentle-surprised-look-pink-nose.jpg?s=612x612&w=0&k=20&c=Hvi5LuKhUUF8IifdcOuGmYj9cgYTrHK07Zg3sF-9ejU=',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
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
                                          'assets/audios/dog-bark-179915.mp3')
                                      .then((_) => _model.soundPlayer2!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/doggie.jpg',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
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
                                          'assets/audios/cat-meow-85175.mp3')
                                      .then((_) => _model.soundPlayer3!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/cat.jpg',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer4 ??= AudioPlayer();
                                  if (_model.soundPlayer4!.playing) {
                                    await _model.soundPlayer4!.stop();
                                  }
                                  _model.soundPlayer4!.setVolume(1);
                                  _model.soundPlayer4!
                                      .setAsset(
                                          'assets/audios/gajah-220044.mp3')
                                      .then((_) => _model.soundPlayer4!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/elephant.jpg',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer5 ??= AudioPlayer();
                                  if (_model.soundPlayer5!.playing) {
                                    await _model.soundPlayer5!.stop();
                                  }
                                  _model.soundPlayer5!.setVolume(1);
                                  _model.soundPlayer5!
                                      .setAsset(
                                          'assets/audios/neighing-of-a-horse-154724_(1).mp3')
                                      .then((_) => _model.soundPlayer5!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/horse.jpg',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer6 ??= AudioPlayer();
                                  if (_model.soundPlayer6!.playing) {
                                    await _model.soundPlayer6!.stop();
                                  }
                                  _model.soundPlayer6!.setVolume(1);
                                  _model.soundPlayer6!
                                      .setAsset(
                                          'assets/audios/owl-hooting-223549.mp3')
                                      .then((_) => _model.soundPlayer6!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/owl.jpg',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer7 ??= AudioPlayer();
                                  if (_model.soundPlayer7!.playing) {
                                    await _model.soundPlayer7!.stop();
                                  }
                                  _model.soundPlayer7!.setVolume(1);
                                  _model.soundPlayer7!
                                      .setAsset(
                                          'assets/audios/lion-roars-with-growls-and-inhales-195839.mp3')
                                      .then((_) => _model.soundPlayer7!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/lion.jpg',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer8 ??= AudioPlayer();
                                  if (_model.soundPlayer8!.playing) {
                                    await _model.soundPlayer8!.stop();
                                  }
                                  _model.soundPlayer8!.setVolume(1);
                                  _model.soundPlayer8!
                                      .setAsset(
                                          'assets/audios/distant-peacock-call-220345.mp3')
                                      .then((_) => _model.soundPlayer8!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0),
                                  child: Image.asset(
                                    'assets/images/peacock.webp',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.02, -0.87),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.soundPlayer9 ??= AudioPlayer();
                        if (_model.soundPlayer9!.playing) {
                          await _model.soundPlayer9!.stop();
                        }
                        _model.soundPlayer9!.setVolume(1);
                        _model.soundPlayer9!
                            .setAsset(
                                'assets/audios/ttsMP3.com_VoiceText_2024-8-27_11-34-58.mp3')
                            .then((_) => _model.soundPlayer9!.play());
                      },
                      child: Text(
                        'Let  Us find how these Animals Sound!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.5, -0.44),
                    child: Text(
                      'Dog',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.5, 0.04),
                    child: Text(
                      'Elephant',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.47, -0.43),
                    child: Text(
                      'Cow',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.41, 0.53),
                    child: Text(
                      'Owl',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.48, 0.03),
                    child: Text(
                      'Cat',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.52, 0.51),
                    child: Text(
                      'Horse',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.46, 1),
                    child: Text(
                      'Lion',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.49, 1.01),
                    child: Text(
                      'Peacock',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-0.96, -0.97),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('LearningRK');
                  },
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 40,
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
