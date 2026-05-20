import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mi_app_flutter/config/menu/menu_items.dart';
//impm importa directamente el material de flutter

class HomeScreen extends StatelessWidget {
  static const String name = "home-screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter + Material 3')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  //cuando inicia con guia bajo es una clase privada, no se puede acceder desde el main
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({required this.menuItem});

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios, color: colors.primary),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        // FIXME: cambiar pantalla
        /* Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ButtonsScreen(),
        )
        );  */
        context.push(menuItem.url);
      },
    );
  }
}
