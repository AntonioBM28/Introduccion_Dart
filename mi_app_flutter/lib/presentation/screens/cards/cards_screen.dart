import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards-screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarjetas')),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Regresar'),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        _SectionTitle(title: 'Elevated Card'),
        _ElevatedCardExample(),
        SizedBox(height: 16),

        _SectionTitle(title: 'Filled Card'),
        _FilledCardExample(),
        SizedBox(height: 16),

        _SectionTitle(title: 'Outlined Card'),
        _OutlinedCardExample(),
        SizedBox(height: 16),

        _SectionTitle(title: 'Card con imagen'),
        _ImageCardExample(),
        SizedBox(height: 80),
      ],
    );
  }
}

// ──────────────────────────────────────────────
// Widgets auxiliares
// ──────────────────────────────────────────────

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(title, style: textTheme.titleMedium),
    );
  }
}

// Card elevada (sombra por defecto de Material 3)
class _ElevatedCardExample extends StatelessWidget {
  const _ElevatedCardExample();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.star_rounded, size: 40, color: colors.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Elevated Card',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    'Este tipo de tarjeta tiene sombra y se eleva sobre el fondo.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Card rellena (color de superficie del tema)
class _FilledCardExample extends StatelessWidget {
  const _FilledCardExample();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card.filled(
      color: colors.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.palette_rounded, size: 40, color: colors.secondary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filled Card',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: colors.onSecondaryContainer),
                  ),
                  Text(
                    'Este tipo de tarjeta usa el color del contenedor secundario.',
                    style: TextStyle(color: colors.onSecondaryContainer),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Card con borde (outlined)
class _OutlinedCardExample extends StatelessWidget {
  const _OutlinedCardExample();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.border_outer_rounded, size: 40, color: colors.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Outlined Card',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    'Este tipo de tarjeta tiene borde y sin sombra.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Card con imagen y acciones
class _ImageCardExample extends StatelessWidget {
  const _ImageCardExample();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: double.infinity,
            color: colors.primaryContainer,
            child: Icon(
              Icons.image_rounded,
              size: 80,
              color: colors.onPrimaryContainer,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card con imagen',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Esta tarjeta incluye una imagen en la parte superior y botones de acción en la parte inferior.',
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Cancelar'),
                    ),
                    const SizedBox(width: 8),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Aceptar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
