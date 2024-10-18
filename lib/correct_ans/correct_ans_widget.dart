import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'correct_ans_model.dart';
export 'correct_ans_model.dart';

class CorrectAnsWidget extends StatefulWidget {
  const CorrectAnsWidget({super.key});

  @override
  State<CorrectAnsWidget> createState() => _CorrectAnsWidgetState();
}

class _CorrectAnsWidgetState extends State<CorrectAnsWidget> {
  late CorrectAnsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorrectAnsModel());
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
          child: Align(
            alignment: AlignmentDirectional(-0.84, -0.99),
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
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                1.64, -0.32),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/Stars_Animation.json',
                                              width: 226,
                                              height: 130,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.3, 0.83),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/Stars_Animation.json',
                                              width: 253,
                                              height: 130,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                1.15, 0.78),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/Rainbow_Firework_Animation.json',
                                              width: 150,
                                              height: 130,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                1.15, 0.24),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/Rainbow_Firework_Animation.json',
                                              width: 150,
                                              height: 130,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.62, 0.49),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/Rainbow_Firework_Animation.json',
                                              width: 211,
                                              height: 130,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -2.2, -1.02),
                                            child: Lottie.asset(
                                              'assets/lottie_animations/Stars_Animation.json',
                                              width: 226,
                                              height: 130,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.43),
                                  child: Lottie.asset(
                                    'assets/lottie_animations/Rainbow_Firework_Animation.json',
                                    width: 1500,
                                    height: 174,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.04, -0.37),
                          child: Text(
                            'Great going...',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 25,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.05, -0.48),
                          child: Text(
                            'Correct Answer!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 32,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, -1.15),
                      child: Lottie.asset(
                        'assets/lottie_animations/Confetti_Animation.json',
                        width: 253,
                        height: 130,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.84, -0.99),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('CountingGame');
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
          ),
        ),
      ),
    );
  }
}
