import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'incorrect_ans_model.dart';
export 'incorrect_ans_model.dart';

class IncorrectAnsWidget extends StatefulWidget {
  const IncorrectAnsWidget({super.key});

  @override
  State<IncorrectAnsWidget> createState() => _IncorrectAnsWidgetState();
}

class _IncorrectAnsWidgetState extends State<IncorrectAnsWidget> {
  late IncorrectAnsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncorrectAnsModel());
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
                children: [],
              ),
              Align(
                alignment: AlignmentDirectional(-1.26, 0.03),
                child: Lottie.asset(
                  'assets/lottie_animations/Wrong_Ans.json',
                  width: 255,
                  height: 230,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, -0.52),
                child: Text(
                  'Try Again',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 28,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, -0.64),
                child: Text(
                  'Wrong Answer :(',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        letterSpacing: 0.0,
                      ),
                ),
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
              Align(
                alignment: AlignmentDirectional(-1.26, 0.03),
                child: Lottie.asset(
                  'assets/lottie_animations/Wrong_Ans.json',
                  width: 255,
                  height: 230,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
