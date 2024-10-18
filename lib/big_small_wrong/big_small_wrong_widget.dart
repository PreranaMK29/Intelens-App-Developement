import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'big_small_wrong_model.dart';
export 'big_small_wrong_model.dart';

class BigSmallWrongWidget extends StatefulWidget {
  const BigSmallWrongWidget({super.key});

  @override
  State<BigSmallWrongWidget> createState() => _BigSmallWrongWidgetState();
}

class _BigSmallWrongWidgetState extends State<BigSmallWrongWidget> {
  late BigSmallWrongModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BigSmallWrongModel());
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
                      alignment: AlignmentDirectional(-0.8, 0.02),
                      child: Lottie.asset(
                        'assets/lottie_animations/Wrong_Ans.json',
                        width: 129,
                        height: 183,
                        fit: BoxFit.cover,
                        animate: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.81, -0.99),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('BIGSMALL');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/93/93634.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.12, -0.38),
                child: Text(
                  'Wrong Answer :(\n      Try Again',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
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
