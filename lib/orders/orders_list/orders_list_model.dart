import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/profile/profile_avatar/profile_avatar_widget.dart';
import 'orders_list_widget.dart' show OrdersListWidget;
import 'package:flutter/material.dart';

class OrdersListModel extends FlutterFlowModel<OrdersListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for ProfileAvatar component.
  late ProfileAvatarModel profileAvatarModel;

  @override
  void initState(BuildContext context) {
    profileAvatarModel = createModel(context, () => ProfileAvatarModel());
  }

  @override
  void dispose() {
    profileAvatarModel.dispose();
  }
}
