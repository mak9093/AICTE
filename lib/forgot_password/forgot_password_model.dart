import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController1;
  String? Function(BuildContext, String?)? emailAddressController1Validator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController2;
  late bool emailAddressVisibility;
  String? Function(BuildContext, String?)? emailAddressController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressVisibility = false;
  }

  void dispose() {
    emailAddressController1?.dispose();
    emailAddressController2?.dispose();
  }

  /// Additional helper methods are added here.

}
