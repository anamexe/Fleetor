import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  const ViewhierarchylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 9.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Time",
              style: theme.textTheme.bodySmall,
            ),
            Text(
              "2 Hr",
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
