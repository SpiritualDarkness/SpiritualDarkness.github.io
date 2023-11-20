import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 30,
      child: const Row(
          children: [Text("LasdOL"), FaIcon(FontAwesomeIcons.accessibleIcon)]),
    );
  }
}

class WTestDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dropdowns = DropdownMenu(dropdownMenuEntries: [
      DropdownMenuEntry<tstWidget>(label: 'asdd', value: tstWidget())
    ]);
    return Column(
      children: [dropdowns, Placeholder()],
    );
  }
}
