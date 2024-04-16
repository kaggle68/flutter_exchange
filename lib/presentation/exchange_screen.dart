import 'package:flutter/material.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({Key? key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  String _selectedCurrency = 'USD'; // 초기 선택 통화 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '환율 검색',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: '검색어',
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 180,
                height: 50,
                child: DropdownButtonFormField<String>(
                  value: _selectedCurrency,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCurrency = newValue!;
                    });
                  },
                  items: ['USD', 'EUR', 'JPY', 'GBP'] // 선택 가능한 통화 목록
                      .map((currency) {
                    return DropdownMenuItem<String>(
                      value: currency,
                      child: Text(currency),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: '검색어',
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 180,
                height: 50,
                child: DropdownButtonFormField<String>(
                  value: _selectedCurrency,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCurrency = newValue!;
                    });
                  },
                  items: ['USD', 'EUR', 'JPY', 'GBP'] // 선택 가능한 통화 목록
                      .map((currency) {
                    return DropdownMenuItem<String>(
                      value: currency,
                      child: Text(currency),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
