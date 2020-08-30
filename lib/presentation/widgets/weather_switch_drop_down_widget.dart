import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherSwitchDropDownWidget extends StatefulWidget {
  @override
  _WeatherSwitchDropDownWidgetState createState() =>
      _WeatherSwitchDropDownWidgetState();
}

class _WeatherSwitchDropDownWidgetState
    extends State<WeatherSwitchDropDownWidget> {
  final _items = <String>['Daily', 'Hourly'];
  String _selectedItem = 'Daily';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DropdownButton(
        value: _selectedItem,
        items: _dropDownItems,
        //TODO add event to change body view
        onChanged: (value) => setState(() => _selectedItem = value),
      ),
    );
  }

  List<DropdownMenuItem> get _dropDownItems =>
      _items.map((e) => DropdownMenuItem(child: Text(e))).toList();
}
