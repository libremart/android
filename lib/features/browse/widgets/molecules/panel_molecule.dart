import 'package:bazaar/features/browse/widgets/atoms/panel_atom.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PanelMolecule extends StatelessWidget {
  const PanelMolecule({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ExpandablePanel(
      builder: (context, collapsed, expanded) => Padding(
        padding: EdgeInsets.all(2.w).copyWith(top: 0),
        child: Expandable(
          collapsed: collapsed,
          expanded: expanded,
        ),
      ),
      theme: ExpandableThemeData(
        iconColor: theme.colorScheme.primary,
        iconPadding: EdgeInsets.symmetric(
          vertical: 3.w,
          horizontal: 3.w,
        ),
      ),
      header: Padding(
        padding: EdgeInsets.all(4.w),
        child: PanelTitle(title: title),
      ),
      collapsed: Container(),
      expanded: content,
    );
  }
}
