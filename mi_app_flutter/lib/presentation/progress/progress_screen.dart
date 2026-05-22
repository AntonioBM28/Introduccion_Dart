import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicators')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text('Circular Progress Indicator Indeterminado'),
            const SizedBox(height: 15),
            const CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.black45,
            ),
            
            const SizedBox(height: 30),
            const Text('Linear Progress Indicator Indeterminado'),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: LinearProgressIndicator(),
            ),

            const SizedBox(height: 30),
            const Text('Circular y Linear Controlado'),
            const SizedBox(height: 15),
            StreamBuilder<double>(
              stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
                return (value * 2) / 100; // Avanza de 0.0 a 1.0 (2% cada 300ms)
              }).takeWhile((value) => value <= 1.001),
              builder: (context, snapshot) {
                final progressValue = snapshot.data ?? 0.0;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        value: progressValue,
                        strokeWidth: 2,
                        backgroundColor: Colors.black12,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: LinearProgressIndicator(
                          value: progressValue,
                          backgroundColor: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 35),
            const Text('Circular Personalizado (Grosor y Color)'),
            const SizedBox(height: 15),
            CircularProgressIndicator(
              strokeWidth: 6,
              color: colors.primary,
              backgroundColor: colors.primary.withValues(alpha: 0.1),
            ),

            const SizedBox(height: 35),
            const Text('Tarjeta de Carga (Loading Card)'),
            const SizedBox(height: 15),
            const _LoadingCard(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _LoadingCard extends StatelessWidget {
  const _LoadingCard();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cargando recursos...',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: colors.primary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Por favor, espera mientras se procesa la información.',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
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
