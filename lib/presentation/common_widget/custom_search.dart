import 'package:flutter/material.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);

    return
        //theme: themeData,
        SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
      return SearchBar(
        controller: controller,
        padding: const MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: 16.0, vertical: 0)),
        onTap: () {
          controller.openView();
        },
        onChanged: (_) {
          controller.openView();
        },
        leading: const Icon(Icons.search),
        trailing: <Widget>[
          Tooltip(
            message: 'Change brightness mode',
            child: IconButton(
              isSelected: isDark,
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              },
              icon: const Icon(Icons.wb_sunny_outlined),
              selectedIcon: const Icon(Icons.brightness_2_outlined),
            ),
          )
        ],
      );
    }, suggestionsBuilder: (BuildContext context, SearchController controller) {
      return List<ListTile>.generate(5, (int index) {
        final String item = 'item $index';
        return ListTile(
          title: Text(item),
          onTap: () {
            setState(() {
              controller.closeView(item);
            });
          },
        );
      });
    });
  }
}
