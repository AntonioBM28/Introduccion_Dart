import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name =
      "button-screen"; //este es para hacer routing, para pasar de una pestaña a otra

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Botones')),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Regresar'),
        icon: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      body: _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 150),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Elevated Icon'),
              icon: Icon(Icons.access_alarm_rounded),
            ),

            FilledButton(onPressed: () {}, child: Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('Outline'),
              icon: Icon(Icons.accessibility_new),
            ),

            OutlinedButton(onPressed: () {}, child: Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Outline'),
              icon: Icon(Icons.accessibility_new),
            ),

            TextButton(onPressed: () {}, child: Text('TextButton')),
            TextButton.icon(
              onPressed: () {},
              label: Text('TextButton'),
              icon: Icon(Icons.account_balance_outlined),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.minimize)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
