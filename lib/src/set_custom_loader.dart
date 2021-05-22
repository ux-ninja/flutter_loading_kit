import 'package:flutter/material.dart';

import 'custom_loader_widget.dart';

class SetCustomLoader {

  final CustomLoaderWidget customAlertDialog;
  final BuildContext context;

  SetCustomLoader({required this.context, required this.customAlertDialog,});

  Future<void> setDialog() {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return customAlertDialog;
        });
  }

}