import '/flutter_flow/flutter_flow_util.dart';
import 'profile_settings_page_widget.dart' show ProfileSettingsPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileSettingsPageModel
    extends FlutterFlowModel<ProfileSettingsPageWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future hapticFeedback(BuildContext context) async {
    HapticFeedback.lightImpact();
  }
}
