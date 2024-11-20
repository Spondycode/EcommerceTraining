import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future avatarAction(BuildContext context) async {
  await Future.wait([
    Future(() async {
      context.pushNamed('ProfileSettingsPage');

      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    }),
    Future(() async {
      HapticFeedback.lightImpact();
    }),
  ]);
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text(
        'Hello Profile',
        style: TextStyle(),
      ),
      duration: const Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).secondary,
    ),
  );
}
