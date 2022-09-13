import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key, required this.searchController}) : super(key: key);
  final TextEditingController searchController;

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final String _hintText = "Search Store";
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.onSecondary,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        prefixIcon: const Icon(Icons.search),
        hintText: _hintText,
      ),
    );
  }
}
