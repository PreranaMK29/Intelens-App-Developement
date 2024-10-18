import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'big_small_correct_model.dart';
export 'big_small_correct_model.dart';

class BigSmallCorrectWidget extends StatefulWidget {
  const BigSmallCorrectWidget({super.key});

  @override
  State<BigSmallCorrectWidget> createState() => _BigSmallCorrectWidgetState();
}

class _BigSmallCorrectWidgetState extends State<BigSmallCorrectWidget> {
  late BigSmallCorrectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BigSmallCorrectModel());
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
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.38, -0.92),
                      child: Lottie.asset(
                        'assets/lottie_animations/Confetti_Animation.json',
                        width: 231,
                        height: 130,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.73, -0.2),
                      child: Lottie.asset(
                        'assets/lottie_animations/Rainbow_Firework_Animation.json',
                        width: 150,
                        height: 181,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.49, 0.18),
                      child: Lottie.asset(
                        'assets/lottie_animations/Rainbow_Firework_Animation.json',
                        width: 150,
                        height: 130,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.76, 0.02),
                      child: Lottie.asset(
                        'assets/lottie_animations/Stars_Animation.json',
                        width: 150,
                        height: 130,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.51, -0.32),
                      child: Lottie.asset(
                        'assets/lottie_animations/Stars_Animation.json',
                        width: 108,
                        height: 130,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, -1.01),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('BIGSMALL');
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.92, -1.01),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/93/93634.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, -0.53),
                child: Text(
                  'Correct Answer',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 32,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, -0.41),
                child: Text(
                  'Great going....',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
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
