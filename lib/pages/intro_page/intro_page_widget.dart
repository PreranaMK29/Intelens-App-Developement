import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'intro_page_model.dart';
export 'intro_page_model.dart';

class IntroPageWidget extends StatefulWidget {
  const IntroPageWidget({super.key});

  @override
  State<IntroPageWidget> createState() => _IntroPageWidgetState();
}

class _IntroPageWidgetState extends State<IntroPageWidget> {
  late IntroPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroPageModel());
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
        body: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: 1000,
                    height: 20046,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          'assets/images/Intelens_Bain-transformed.jpeg',
                        ).image,
                      ),
                    ),
                    alignment: AlignmentDirectional(0, 0),
                    child: Stack(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, -1.19),
                                  child: Container(
                                    width: 427,
                                    height: 241,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/rainbow.jpg',
                                        ).image,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Text(
                                        'INTELENS',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 40,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.76),
                              child: Container(
                                width: 227,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12,
                                      color: Colors.black,
                                      offset: Offset(
                                        0,
                                        5,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.01, 0.49),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('HomePage');
                                },
                                child: FaIcon(
                                  FontAwesomeIcons.solidPlayCircle,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.06, 1.17),
                  child: Container(
                    width: 390,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.01, 0.74),
                  child: AnimatedDefaultTextStyle(
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                    duration: Duration(milliseconds: 915),
                    curve: Curves.easeIn,
                    child: Text(
                      'An empowering \napp for \nspecial learners',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 40, 0, 0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('LoginSignupRK', context.mounted);
                },
                child: Icon(
                  Icons.arrow_circle_left,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
