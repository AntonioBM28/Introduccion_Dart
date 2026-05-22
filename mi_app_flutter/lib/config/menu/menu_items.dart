import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.url,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    url: '/buttons',
    icon: Icons.smart_button,
  ),

  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    url: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    url: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    url: '/snackbars',
    icon: Icons.info_outline_rounded,
  ),

  MenuItems(
    title: 'Animated Container',
    subtitle: 'Stateful Widgets animaciones',
    url: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),

  MenuItems(
    title: 'Introduccion a la aplicacion',
    subtitle: 'Tutorial introductorio',
    url: '/tutorial',
    icon: Icons.accessible_rounded,
  ),

  MenuItems(
    title: 'Cambiar Tema',
    subtitle: 'Cambiar temade la aplicacion',
    url: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),

  MenuItems(
    title: 'Riverpod Counter',
    subtitle: 'Introduccion a Riverpod',
    url: '/counter-riverdpod',
    icon: Icons.add,
  ),
];
