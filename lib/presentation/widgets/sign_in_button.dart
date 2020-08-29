import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
    @required VoidCallback onPressed,
    @required String label,
    @required Widget icon,
    Color color,
  })  : _onPressed = onPressed,
        _label = label,
        _icon = icon,
        _color = color,
        assert(onPressed != null),
        assert(label != null),
        assert(icon != null),
        super(key: key);

  final VoidCallback _onPressed;
  final String _label;
  final Widget _icon;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: _onPressed,
      icon: _icon,
      label: Text(_label),
      color: _color,
    );
  }
}
