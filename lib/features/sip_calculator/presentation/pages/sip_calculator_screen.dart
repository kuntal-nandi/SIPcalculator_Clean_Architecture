import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'widgets/custom_slider.dart';

class SIPCalculatorScreen extends StatefulWidget {
  const SIPCalculatorScreen({super.key});

  @override
  State<SIPCalculatorScreen> createState() => _SIPCalculatorScreenState();
}

class _SIPCalculatorScreenState extends State<SIPCalculatorScreen> {
  // Controllers for text fields
  final TextEditingController _investmentController = TextEditingController();
  final TextEditingController _returnRateController = TextEditingController();
  final TextEditingController _timePeriodController = TextEditingController();

  // Slider values
  double _investmentAmount = 25000;
  double _returnRate = 12;
  double _timePeriod = 5;

  // Calculation results
  double _totalInvestment = 0;
  double _estimatedReturns = 0;
  double _totalValue = 0;

  final isSip = ValueNotifier<bool>(true);

  // Chart data
  Map<String, double> _chartData = {};
  bool isCalcuating = false;

  @override
  void initState() {
    super.initState();
    _investmentController.text = _investmentAmount.toInt().toString();
    _returnRateController.text = _returnRate.toInt().toString();
    _timePeriodController.text = _timePeriod.toInt().toString();
  }

  void _calculateSIP() {
    if (isCalcuating) return; // Prevent multiple calculations at once
    setState(() {
      isCalcuating = true;
    });
    FocusScope.of(context).unfocus(); // Dismiss the keyboard
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        isCalcuating = false;
      });
    });
    if (isSip.value == false) {
      // Lumpsum Formula: M = P × (1 + r)^n
      double lumpsumInvestment = _investmentAmount;
      double annualRate = _returnRate / 100;
      double futureValue = lumpsumInvestment * pow(1 + annualRate, _timePeriod);
      setState(() {
        _totalInvestment = lumpsumInvestment;
        _totalValue = futureValue;
        _estimatedReturns = _totalValue - _totalInvestment;
        _chartData = {
          "Invested Amount": _totalInvestment,
          "Est. Returns": _estimatedReturns,
        };
      });
      return;
    }
    double monthlyInvestment = _investmentAmount;
    double annualRate = _returnRate / 100;
    double monthlyRate = annualRate / 12;
    int totalMonths = (_timePeriod * 12).toInt();

    // SIP Formula: M = P × {[(1 + i)^n - 1] / i} × (1 + i)
    double futureValue =
        monthlyInvestment *
        (((pow(1 + monthlyRate, totalMonths) - 1) / monthlyRate) *
            (1 + monthlyRate));

    setState(() {
      _totalInvestment = monthlyInvestment * totalMonths;
      _totalValue = futureValue;
      _estimatedReturns = _totalValue - _totalInvestment;

      _chartData = {
        "Invested Amount": _totalInvestment,
        "Est. Returns": _estimatedReturns,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('SIP Calculator'),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            ValueListenableBuilder<bool>(
              valueListenable: isSip,
              builder: (context, value, child) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.1),
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      value
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.teal[50],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text(
                                'SIP',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                isSip.value = true;
                              },
                              icon: const Text(
                                'SIP',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                      const SizedBox(width: 16),
                      !value
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.teal[50],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Text(
                                'Lumpsum',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                isSip.value = false;
                              },
                              icon: const Text(
                                'Lumpsum',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 24),

            // Investment Amount Section
            ValueListenableBuilder<bool>(
              valueListenable: isSip,
              builder: (context, value, child) {
                return CustomSliderWidget(
                  title: value ? 'Monthly Investment' : 'Investment Amount',
                  value: _investmentAmount,
                  min: 1000,
                  max: 100000,
                  divisions: 99,
                  controller: _investmentController,
                  onSliderChanged: (value) {
                    setState(() {
                      _investmentAmount = value;
                      _investmentController.text = value.toInt().toString();
                    });
                  },
                  onTextChanged: (value) {
                    if (value.isNotEmpty) {
                      double? newValue = double.tryParse(value);
                      if (newValue != null &&
                          newValue >= 1000 &&
                          newValue <= 100000) {
                        setState(() {
                          _investmentAmount = newValue;
                        });
                      }
                    }
                  },
                  prefix: '₹',
                );
              },
            ),

            const SizedBox(height: 24),

            // Return Rate Section
            CustomSliderWidget(
              title: 'Expected return rate (p.a)',
              value: _returnRate,
              min: 1,
              max: 30,
              divisions: 29,
              controller: _returnRateController,
              onSliderChanged: (value) {
                setState(() {
                  _returnRate = value;
                  _returnRateController.text = value.toInt().toString();
                });
              },
              onTextChanged: (value) {
                if (value.isNotEmpty) {
                  double? newValue = double.tryParse(value);
                  if (newValue != null && newValue >= 1 && newValue <= 30) {
                    setState(() {
                      _returnRate = newValue;
                    });
                  }
                }
              },
              suffix: '%',
            ),

            const SizedBox(height: 24),

            // Time Period Section
            CustomSliderWidget(
              title: 'Time period',
              value: _timePeriod,
              min: 1,
              max: 30,
              divisions: 29,
              controller: _timePeriodController,
              onSliderChanged: (value) {
                setState(() {
                  _timePeriod = value;
                  _timePeriodController.text = value.toInt().toString();
                });
              },
              onTextChanged: (value) {
                if (value.isNotEmpty) {
                  double? newValue = double.tryParse(value);
                  if (newValue != null && newValue >= 1 && newValue <= 30) {
                    setState(() {
                      _timePeriod = newValue;
                    });
                  }
                }
              },
              suffix: 'Yr',
            ),

            const SizedBox(height: 32),

            // Calculate Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _calculateSIP,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Results Section
            if (_totalValue > 0) ...[
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Chart Section
                    if (_chartData.isNotEmpty) ...[
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: isCalcuating
                                ? Container(height: 150)
                                : Transform.rotate(
                                    angle: -pi / 2,
                                    child: PieChart(
                                      dataMap: _chartData,
                                      animationDuration: const Duration(
                                        milliseconds: 800,
                                      ),
                                      chartLegendSpacing: 32,
                                      chartRadius:
                                          MediaQuery.of(context).size.width /
                                          3.2,
                                      colorList: [
                                        Colors.indigoAccent.withValues(
                                          alpha: 0.2,
                                        ),
                                        Colors.indigoAccent.shade700,
                                      ],
                                      initialAngleInDegree: 0,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 32,
                                      legendOptions: const LegendOptions(
                                        showLegendsInRow: false,
                                        legendPosition: LegendPosition.right,
                                        showLegends: false,
                                      ),
                                      chartValuesOptions:
                                          const ChartValuesOptions(
                                            showChartValueBackground: false,
                                            showChartValues: false,
                                            showChartValuesInPercentage: false,
                                            showChartValuesOutside: false,
                                          ),
                                    ),
                                  ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildLegendItem(
                                  'Invested amount',
                                  Colors.indigoAccent.withValues(alpha: 0.2),
                                ),
                                const SizedBox(height: 8),
                                _buildLegendItem(
                                  'Est. returns',
                                  Colors.indigoAccent.shade700,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Results Summary
                    _buildResultRow('Invested amount', _totalInvestment),
                    const SizedBox(height: 12),
                    _buildResultRow('Est. returns', _estimatedReturns),
                    const SizedBox(height: 12),
                    const Divider(),
                    const SizedBox(height: 12),
                    _buildResultRow('Total Amount', _totalValue, isTotal: true),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget _buildResultRow(String label, double amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 16 : 14,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: Colors.grey[600],
          ),
        ),
        Text(
          '₹${amount.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}',
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: FontWeight.bold,
            color: isTotal ? Colors.black : Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
