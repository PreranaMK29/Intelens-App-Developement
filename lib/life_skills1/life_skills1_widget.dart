import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'life_skills1_model.dart';
export 'life_skills1_model.dart';

class LifeSkills1Widget extends StatefulWidget {
  const LifeSkills1Widget({super.key});

  @override
  State<LifeSkills1Widget> createState() => _LifeSkills1WidgetState();
}

class _LifeSkills1WidgetState extends State<LifeSkills1Widget> {
  late LifeSkills1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LifeSkills1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, -0.02),
                  child: FlutterFlowYoutubePlayer(
                    url: 'https://youtu.be/C5eWJkn5MgI',
                    autoPlay: false,
                    looping: true,
                    mute: false,
                    showControls: true,
                    showFullScreen: true,
                    strictRelatedVideos: false,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -0.66),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF06B7DE),
                    ),
                    child: Text(
                      'KNOW THE DIFFERENCE BETWEEN GOOD TOUCH AND BAD TOUCH ',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.92, -0.97),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('LifeSkills');
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
      ),
    );
  }
}
