import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'incorrect_co_model.dart';
export 'incorrect_co_model.dart';

class IncorrectCoWidget extends StatefulWidget {
  const IncorrectCoWidget({super.key});

  @override
  State<IncorrectCoWidget> createState() => _IncorrectCoWidgetState();
}

class _IncorrectCoWidgetState extends State<IncorrectCoWidget> {
  late IncorrectCoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncorrectCoModel());
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
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Stack(
                      children: [],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.36),
                child: Text(
                  'Try Again !!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.46, 0),
                child: Lottie.asset(
                  'assets/lottie_animations/Wrong_Ans.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  animate: true,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.88, -0.97),
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
