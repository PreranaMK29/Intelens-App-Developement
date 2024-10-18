import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'correct_co_model.dart';
export 'correct_co_model.dart';

class CorrectCoWidget extends StatefulWidget {
  const CorrectCoWidget({super.key});

  @override
  State<CorrectCoWidget> createState() => _CorrectCoWidgetState();
}

class _CorrectCoWidgetState extends State<CorrectCoWidget> {
  late CorrectCoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorrectCoModel());
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
                  children: [],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, -0.31),
                child: Text(
                  'You got it right !',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF14151B),
                        fontSize: 30,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.61, -0.99),
                child: Lottie.asset(
                  'assets/lottie_animations/Confetti_Animation.json',
                  width: 316,
                  height: 200,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.23, 0.03),
                child: Lottie.asset(
                  'assets/lottie_animations/Rainbow_Firework_Animation.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.91, 0.53),
                child: Lottie.asset(
                  'assets/lottie_animations/Rainbow_Firework_Animation.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.14, 0.52),
                child: Lottie.asset(
                  'assets/lottie_animations/Stars_Animation.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.17, 0.52),
                child: Lottie.asset(
                  'assets/lottie_animations/Rainbow_Firework_Animation.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.14, 0.52),
                child: Lottie.asset(
                  'assets/lottie_animations/Stars_Animation.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.88, -0.92),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('TRIAL');
                  },
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 50,
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
