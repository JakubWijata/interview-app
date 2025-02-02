import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.onClear,
    required this.onChanged,
  });

  final VoidCallback onClear;
  final ValueChanged<String> onChanged;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.search_field_placeholder,
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: _onClear,
        ),
      ),
      onChanged: widget.onChanged,
    );
  }

  void _onClear() {
    widget.onClear.call();
    _controller.clear();
  }
}
