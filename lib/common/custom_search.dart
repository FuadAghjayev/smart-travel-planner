import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final Function(String) onChanged;
  final String? hintText;

  const CustomSearchBar({
    Key? key,
    required this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SearchAnchor(
        builder: (BuildContext context, SearchController controller) {
          return SearchBar(
            controller: controller,
            padding: const WidgetStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0),
            ),
            onChanged: (value) => onChanged(value),
            leading: const Icon(Icons.search),
            trailing: const [
              Tooltip(
                message: 'Filter search',
                child: Icon(Icons.tune),
              ),
            ],
            hintText: hintText ?? 'Search destinations...',
            hintStyle: WidgetStateProperty.all(
              const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            elevation: WidgetStateProperty.all(0),
            backgroundColor: WidgetStateProperty.all(Colors.white),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            constraints: const BoxConstraints(
              maxHeight: 50,
              minHeight: 50,
            ),
          );
        },
        suggestionsBuilder: (BuildContext context, SearchController controller) {
          return List<ListTile>.generate(5, (int index) {
            return ListTile(
              leading: const Icon(Icons.location_on),
              title: Text('Suggested location ${index + 1}'),
              onTap: () {
                controller.closeView(controller.text);
                onChanged(controller.text);
              },
            );
          });
        },
      ),
    );
  }
}