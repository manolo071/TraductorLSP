import 'package:flutter/material.dart';

void main() {
  runApp(DialogalSPApp());
}

class DialogalSPApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DIALOGALSP',
      home: SelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SelectionScreen extends StatefulWidget {
  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  int? selectedOption;

  void selectOption(int option) {
    setState(() {
      selectedOption = option;
    });
  }

  Widget buildOption(int option, String emoji, String text) {
    bool isSelected = selectedOption == option;

    return GestureDetector(
      onTap: () => selectOption(option),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isSelected ? Colors.grey.shade300 : Colors.white,
        ),
        child: Row(
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'DIALOGALSP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Pantalla de selección de:',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              buildOption(1, '🦻', 'para usuario oyente'),
              buildOption(2, '🤟', 'para usuario sordo'),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 12.0),
                ),
                onPressed: () {
                  // Acción al presionar CONTINUAR
                },
                child: const Text(
                  'CONTINUAR',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
