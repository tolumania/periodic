import 'package:flutter/material.dart';
import '../periodic.dart';
import 'data/controller.dart';
import 'periodic_widget.dart';

///showPeriodicDialog
///
///A custom dialog to show a Periodic
///widget inside in it. You can provide the
///[config] and [initialData] for the widget.
///
///You can customize the dialog with a [shape]
///and a [title].
Future<dynamic> showPeriodicDialog(
  BuildContext context, {
  PeriodicConfig config,
  PeriodicData initialData,
  ShapeBorder shape,
  String title,
}) {
  final periodicController = PeriodicController();

  return showDialog(
    context: context,
    child: AlertDialog(
      actions: [
        FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        RaisedButton(
            child: Text('Ok'),
            onPressed: () {
              print(periodicController.current.toString());
              // Navigator.of(context).pop();
            }),
      ],
      insetPadding:
          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      title: Text(title ?? 'Hola'),
      content: Periodic(
        config: config,
        controller: periodicController,
        initialData: initialData,
      ),
      shape: shape,
    ),
  );
}
