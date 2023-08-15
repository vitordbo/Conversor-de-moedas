import 'dart:io';

import 'package:conversor_de_moedas/app/models/conversion_history_item.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key, required this.conversionHistory});

  final List<ConversionHistoryItem> conversionHistory;

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  void _clearHistory() {
    setState(() {
      widget.conversionHistory.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amber.withOpacity(0.5)),
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      'https://avatars.githubusercontent.com/u/65680799?v=4',
                      height: 10,
                      width: 10,
                    )),
                accountName: const Text('Vitor Duarte'),
                accountEmail: const Text('Vitor@email.com')),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Sair do aplicativo'),
              onTap: () {
                exit(0);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Histórico de conversões'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.conversionHistory.length,
              itemBuilder: (context, index) {
                final historyItem = widget.conversionHistory[index];
                return ListTile(
                  title: Text(
                    'De: ${historyItem.fromCurrency}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Para: ${historyItem.toCurrency}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                    'Convertido: ${historyItem.amount.toStringAsFixed(2)} para ${historyItem.convertedAmount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: () {
                _clearHistory();
              },
              child: const Text(
                'Apagar',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
