import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/others/profile_setting_component/profile_setting_component_widget.dart';
import '/profile/profile_avatar/profile_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_settings_page_model.dart';
export 'profile_settings_page_model.dart';

class ProfileSettingsPageWidget extends StatefulWidget {
  const ProfileSettingsPageWidget({super.key});

  @override
  State<ProfileSettingsPageWidget> createState() =>
      _ProfileSettingsPageWidgetState();
}

class _ProfileSettingsPageWidgetState extends State<ProfileSettingsPageWidget>
    with TickerProviderStateMixin {
  late ProfileSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSettingsPageModel());

    animationsMap.addAll({
      'profileSettingComponentOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(
                valueOrDefault<double>(
                  -MediaQuery.sizeOf(context).width - 100,
                  0.0,
                ),
                0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'profileSettingComponentOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(
                valueOrDefault<double>(
                  -MediaQuery.sizeOf(context).width - 100,
                  0.0,
                ),
                0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'profileSettingComponentOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(
                valueOrDefault<double>(
                  -MediaQuery.sizeOf(context).width - 100,
                  0.0,
                ),
                0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'profileSettingComponentOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: Offset(
                valueOrDefault<double>(
                  -MediaQuery.sizeOf(context).width - 100,
                  0.0,
                ),
                0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            if (isWeb) {
              var confirmDialogResponse = await showDialog<bool>(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: const Text('Confirm Invitation'),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, false),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, true),
                            child: const Text('Confirm'),
                          ),
                        ],
                      );
                    },
                  ) ??
                  false;
            } else {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('Sorry'),
                    content: const Text('It\'s not the web'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: const Text('Ok'),
                      ),
                    ],
                  );
                },
              );
            }

            context.pushNamed('HomePage');
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 8.0,
          label: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.person_3,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              Text(
                'Add Friend',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).info,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Profile',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: FaIcon(
                  FontAwesomeIcons.pencilAlt,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                valueOrDefault<double>(
                  FFAppConstants.paddingFromLeft.toDouble(),
                  0.0,
                ),
                0.0,
                valueOrDefault<double>(
                  FFAppConstants.paddingFromRight.toDouble(),
                  0.0,
                ),
                0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 4.0,
                        ),
                      ),
                      child: wrapWithModel(
                        model: _model.profileAvatarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const Hero(
                          tag: 'avatarHeroTag',
                          transitionOnUserGestures: true,
                          child: Material(
                            color: Colors.transparent,
                            child: ProfileAvatarWidget(),
                          ),
                        ),
                      ),
                    ),
                    if (MediaQuery.sizeOf(context).width > 600.0)
                      Text(
                        dateTimeFormat("yMMMd", getCurrentTimestamp),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    Text(
                      'Dave Allen',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                    ),
                    Text(
                      'david@spondycode.dev',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)).around(const SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    wrapWithModel(
                      model: _model.profileSettingComponentModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileSettingComponentWidget(
                        leadingIcon: const Icon(
                          Icons.map_outlined,
                        ),
                        title: 'Addresses',
                        onTap: () async {
                          context.pushNamed('AddressListPage');
                        },
                      ),
                    ).animateOnPageLoad(animationsMap[
                        'profileSettingComponentOnPageLoadAnimation1']!),
                    wrapWithModel(
                      model: _model.profileSettingComponentModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileSettingComponentWidget(
                        leadingIcon: const Icon(
                          Icons.cottage_sharp,
                        ),
                        title: 'Home',
                        onTap: () async {
                          context.pushNamed('HomePage');
                        },
                      ),
                    ).animateOnPageLoad(animationsMap[
                        'profileSettingComponentOnPageLoadAnimation2']!),
                    wrapWithModel(
                      model: _model.profileSettingComponentModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileSettingComponentWidget(
                        leadingIcon: const Icon(
                          Icons.cell_wifi,
                        ),
                        title: 'Product List',
                        onTap: () async {
                          context.pushNamed('ProductListPage');
                        },
                      ),
                    ).animateOnPageLoad(animationsMap[
                        'profileSettingComponentOnPageLoadAnimation3']!),
                    wrapWithModel(
                      model: _model.profileSettingComponentModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileSettingComponentWidget(
                        leadingIcon: const Icon(
                          Icons.pin_invoke,
                        ),
                        title: 'Invoice',
                        onTap: () async {
                          await _model.hapticFeedback(context);
                        },
                      ),
                    ).animateOnPageLoad(animationsMap[
                        'profileSettingComponentOnPageLoadAnimation4']!),
                  ]
                      .divide(const SizedBox(height: 12.0))
                      .around(const SizedBox(height: 12.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
