import 'package:flutter/material.dart';

class BasicDrawer extends StatelessWidget {
  const BasicDrawer({
    super.key,
    required this.onItemTap,
    required this.selectedIndex,
  });

  final Function(int) onItemTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: ContinuousRectangleBorder(),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffE6E6E6),
                      radius: 34,
                      child: Icon(Icons.person, color: Color(0xffCCCCCC)),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello User",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Row(
                          children: [
                            Text(
                              "View Profile",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            IconButton(
                              onPressed: null,
                              icon: Icon(Icons.chevron_right_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_rounded),
            selected: selectedIndex == 0,
            title: Text("Home"),
            onTap: () => onItemTap(0),
          ),
          ListTile(
            leading: Icon(Icons.night_shelter_rounded),
            selected: selectedIndex == 1,
            title: Text("Find Shelter"),
            onTap: () => onItemTap(1),
          ),
          ListTile(
            leading: Icon(Icons.report),
            selected: selectedIndex == 2,
            title: Text("Report an Incident"),
            onTap: () => onItemTap(2),
          ),
          ListTile(
            leading: Icon(Icons.book_rounded),
            title: Text("Guides"),
            onTap: () => onItemTap(3),
            selected: selectedIndex == 3,
          ),
          ListTile(
            leading: Icon(Icons.monetization_on_rounded),
            title: Text("Donate"),
            selected: selectedIndex == 4,
            onTap: () => onItemTap(4),
          ),
          ListTile(
            leading: Icon(Icons.contact_support_rounded),
            title: Text("Contact Support"),
            selected: selectedIndex == 5,
            onTap: () => onItemTap(5),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            selected: selectedIndex == 6,
            onTap: () => onItemTap(6),
          ),
        ],
      ),
    );
  }
}
