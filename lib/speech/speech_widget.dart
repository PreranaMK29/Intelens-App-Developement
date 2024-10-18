import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'speech_model.dart';
export 'speech_model.dart';

class SpeechWidget extends StatefulWidget {
  const SpeechWidget({super.key});

  @override
  State<SpeechWidget> createState() => _SpeechWidgetState();
}

class _SpeechWidgetState extends State<SpeechWidget> {
  late SpeechModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeechModel());
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
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.62, -0.64),
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
                                  _model.soundPlayer1!.setVolume(0.7);
                                  _model.soundPlayer1!
                                      .setAsset('assets/audios/I_am_Hungry.mp3')
                                      .then((_) => _model.soundPlayer1!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/1622/1622979.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.7, -0.63),
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
                                  _model.soundPlayer2!.setVolume(0.7);
                                  _model.soundPlayer2!
                                      .setAsset(
                                          'assets/audios/I_need_drinking_water.mp3')
                                      .then((_) => _model.soundPlayer2!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn4.iconfinder.com/data/icons/good-life-1/512/DrinkAWater-drink-thirsty-drinking-refreshing-512.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.65, -0.19),
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
                                  _model.soundPlayer3!.setVolume(0.7);
                                  _model.soundPlayer3!
                                      .setAsset('assets/audios/Too_spicy.mp3')
                                      .then((_) => _model.soundPlayer3!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4589/4589912.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.7, -0.21),
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
                                  _model.soundPlayer4!.setVolume(0.7);
                                  _model.soundPlayer4!
                                      .setAsset('assets/audios/I_need_help.mp3')
                                      .then((_) => _model.soundPlayer4!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/8011/8011239.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.66, 0.24),
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
                                  _model.soundPlayer5!.setVolume(0.7);
                                  _model.soundPlayer5!
                                      .setAsset('assets/audios/Washroom.mp3')
                                      .then((_) => _model.soundPlayer5!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/5617/5617582.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.7, 0.24),
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
                                      .setAsset('assets/audios/Sleepy.mp3')
                                      .then((_) => _model.soundPlayer6!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4126/4126243.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.6, 0.61),
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
                                  _model.soundPlayer7!.setVolume(0.7);
                                  _model.soundPlayer7!
                                      .setAsset('assets/audios/Not_Well.mp3')
                                      .then((_) => _model.soundPlayer7!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn4.iconfinder.com/data/icons/coronavirus-64/42/Artboard_15-512.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.74, 0.63),
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
                                  _model.soundPlayer8!.setVolume(0.7);
                                  _model.soundPlayer8!
                                      .setAsset('assets/audios/Hug.mp3')
                                      .then((_) => _model.soundPlayer8!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/1141/1141107.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.65, 0.98),
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
                                  _model.soundPlayer9!.setVolume(0.7);
                                  _model.soundPlayer9!
                                      .setAsset('assets/audios/Lets_go_Out.mp3')
                                      .then((_) => _model.soundPlayer9!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4721/4721057.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.68, 0.99),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.soundPlayer10 ??= AudioPlayer();
                                  if (_model.soundPlayer10!.playing) {
                                    await _model.soundPlayer10!.stop();
                                  }
                                  _model.soundPlayer10!.setVolume(0.7);
                                  _model.soundPlayer10!
                                      .setAsset(
                                          'assets/audios/Sanitary_Pad.mp3')
                                      .then(
                                          (_) => _model.soundPlayer10!.play());
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/6774/6774312.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.84, -1),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('HomePage');
                                },
                                child: Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.01, -0.97),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Vector_48.jpg',
                        width: 200,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.01, -0.89),
                child: Text(
                  'Speech',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto Slab',
                        fontSize: 25,
                        letterSpacing: 0.0,
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
