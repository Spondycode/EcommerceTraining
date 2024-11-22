import '/flutter_flow/flutter_flow_util.dart';
import '/profile/others/profile_setting_component/profile_setting_component_widget.dart';
import 'profile_settings_dynamic_page_copy_widget.dart'
    show ProfileSettingsDynamicPageCopyWidget;
import 'package:flutter/material.dart';

class ProfileSettingsDynamicPageCopyModel
    extends FlutterFlowModel<ProfileSettingsDynamicPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for ProfileSettingComponent dynamic component.
  late FlutterFlowDynamicModels<ProfileSettingComponentModel>
      profileSettingComponentModels;

  @override
  void initState(BuildContext context) {
    profileSettingComponentModels =
        FlutterFlowDynamicModels(() => ProfileSettingComponentModel());
  }

  @override
  void dispose() {
    profileSettingComponentModels.dispose();
  }
}
