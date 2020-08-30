import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DayOfMounthWidget extends StatefulWidget {
  const DayOfMounthWidget({
    Key key,
    @required int dayOfMonth,
  })  : _dayOfMonth = dayOfMonth,
        super(key: key);

  final int _dayOfMonth;

  @override
  State<StatefulWidget> createState() => _DayOfMounthWidgetState();
}

class _DayOfMounthWidgetState extends State<DayOfMounthWidget> {
  final _isSelected = false;
  bool _isCurrentDay = false;

  @override
  void initState() {
    super.initState();
    _isCurrentDay = widget._dayOfMonth == DateTime.now().day;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _color,
      ),
      child: Text(
        widget._dayOfMonth.toString(),
      ),
    );
  }

  Color get _color {
    if (_isSelected) {
      return Colors.white;
    } else if (_isCurrentDay) {
      return Colors.grey;
    }
    return Colors.transparent;
  }
}
