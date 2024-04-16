import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../data/data_source/exchange_data_source.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  final _amountController = TextEditingController();
  String? _baseCurrency;
  String? _targetCurrency;
  double? _exchangeRateResult;
  final List<String> _currencies = [
    "USD",
    "EUR",
    "JPY",
    "KRW"
  ]; // Example currencies
  ExchangeDataSource? _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = ExchangeDataSource(client: http.Client());
    _baseCurrency = _currencies.first;
    _targetCurrency = _currencies.last;
    _amountController.addListener(_updateExchangeRate);
  }

  void _updateExchangeRate() async {
    if (_baseCurrency != null &&
        _targetCurrency != null &&
        _amountController.text.isNotEmpty) {
      try {
        final exchangeDto =
            await _dataSource!.getExchangeResult(_baseCurrency!);
        final rate = exchangeDto!.conversionRates.toJson()[_targetCurrency];
        double amount = double.tryParse(_amountController.text) ?? 0.0;
        setState(() {
          _exchangeRateResult = amount * (rate ?? 0.0);
        });
      } catch (e) {
        setState(() {
          _exchangeRateResult = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Exchange')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Amount',
                      hintText: 'Enter amount to convert',
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _baseCurrency,
                    onChanged: (String? newValue) {
                      setState(() {
                        _baseCurrency = newValue;
                      });
                      _updateExchangeRate();
                    },
                    items: _currencies
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(_exchangeRateResult != null
                      ? 'Converted: $_exchangeRateResult $_targetCurrency'
                      : 'Enter amount and select currencies'),
                ),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _targetCurrency,
                    onChanged: (String? newValue) {
                      setState(() {
                        _targetCurrency = newValue;
                      });
                      _updateExchangeRate();
                    },
                    items: _currencies
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
