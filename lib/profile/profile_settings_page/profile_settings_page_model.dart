import '/flutter_flow/flutter_flow_util.dart';
import '/profile/others/profile_setting_component/profile_setting_component_widget.dart';
import '/profile/profile_avatar/profile_avatar_widget.dart';
import 'profile_settings_page_widget.dart' show ProfileSettingsPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileSettingsPageModel
    extends FlutterFlowModel<ProfileSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileAvatar component.
  late ProfileAvatarModel profileAvatarModel;
  // Model for ProfileSettingComponent component.
  late ProfileSettingComponentModel profileSettingComponentModel1;
  // Model for ProfileSettingComponent component.
  late ProfileSettingComponentModel profileSettingComponentModel2;
  // Model for ProfileSettingComponent component.
  late ProfileSettingComponentModel profileSettingComponentModel3;
  // Model for ProfileSettingComponent component.
  late ProfileSettingComponentModel profileSettingComponentModel4;

  @override
  void initState(BuildContext context) {
    profileAvatarModel = createModel(context, () => ProfileAvatarModel());
    profileSettingComponentModel1 =
        createModel(context, () => ProfileSettingComponentModel());
    profileSettingComponentModel2 =
        createModel(context, () => ProfileSettingComponentModel());
    profileSettingComponentModel3 =
        createModel(context, () => ProfileSettingComponentModel());
    profileSettingComponentModel4 =
        createModel(context, () => ProfileSettingComponentModel());
  }

  @override
  void dispose() {
    profileAvatarModel.dispose();
    profileSettingComponentModel1.dispose();
    profileSettingComponentModel2.dispose();
    profileSettingComponentModel3.dispose();
    profileSettingComponentModel4.dispose();
  }

  /// Action blocks.
  Future hapticFeedback(BuildContext context) async {
    HapticFeedback.lightImpact();
  }
}
