import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_setting_component_model.dart';
export 'profile_setting_component_model.dart';

class ProfileSettingComponentWidget extends StatefulWidget {
  const ProfileSettingComponentWidget({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.onTap,
  });

  final Widget? leadingIcon;
  final String? title;
  final Future Function()? onTap;

  @override
  State<ProfileSettingComponentWidget> createState() =>
      _ProfileSettingComponentWidgetState();
}

class _ProfileSettingComponentWidgetState
    extends State<ProfileSettingComponentWidget> {
  late ProfileSettingComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSettingComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.leadingIcon!,
          Expanded(
            child: Text(
              valueOrDefault<String>(
                widget.title,
                'title',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ),
          FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 18.0,
            ),
            onPressed: () async {
              // profileItemCallbackAction
              await widget.onTap?.call();
            },
          ),
        ].divide(const SizedBox(width: 8.0)).around(const SizedBox(width: 8.0)),
      ),
    );
  }
}
