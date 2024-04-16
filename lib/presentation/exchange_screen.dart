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

  Widget _buildDropdown(
      String? value, List<String> items, ValueChanged<String?> onChanged) {
    return InputDecorator(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        labelText: '국가 선택',
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: value,
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildResultBox() {
    return InputDecorator(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
      child: Text(
        _exchangeRateResult != null
            ? _exchangeRateResult!.toStringAsFixed(2)
            : '결과가 결과',
        style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '환율이 환율',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: '머니가 Money',
                      hintText: 'Money is 머니',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: _buildDropdown(_baseCurrency, _currencies, (newValue) {
                    setState(() {
                      _baseCurrency = newValue;
                    });
                    _updateExchangeRate();
                  }),
                ),
              ],
            ),
            const SizedBox(height: 20), // Vertical space between the rows
            Row(
              children: [
                Expanded(
                  child: _buildResultBox(),
                ),
                const SizedBox(
                    width:
                        20), // Horizontal space between the result box and the second dropdown
                Expanded(
                  child:
                      _buildDropdown(_targetCurrency, _currencies, (newValue) {
                    setState(() {
                      _targetCurrency = newValue;
                    });
                    _updateExchangeRate();
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
