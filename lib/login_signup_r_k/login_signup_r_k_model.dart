import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_signup_r_k_widget.dart' show LoginSignupRKWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginSignupRKModel extends FlutterFlowModel<LoginSignupRKWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for CPass widget.
  FocusNode? cPassFocusNode;
  TextEditingController? cPassTextController;
  late bool cPassVisibility;
  String? Function(BuildContext, String?)? cPassTextControllerValidator;
  // State field(s) for Pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for Pass1 widget.
  FocusNode? pass1FocusNode;
  TextEditingController? pass1TextController;
  late bool pass1Visibility;
  String? Function(BuildContext, String?)? pass1TextControllerValidator;
  // State field(s) for Email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;

  @override
  void initState(BuildContext context) {
    cPassVisibility = false;
    passVisibility = false;
    pass1Visibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    cPassFocusNode?.dispose();
    cPassTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    pass1FocusNode?.dispose();
    pass1TextController?.dispose();

    email1FocusNode?.dispose();
    email1TextController?.dispose();
  }
}
