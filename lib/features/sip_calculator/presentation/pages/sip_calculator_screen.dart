import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sip_calculator_clean_architecture/common/helper/enums.dart';
import 'package:sip_calculator_clean_architecture/common/helper/extensions.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/domain/entities/calculated_result_entity.dart';
import 'package:sip_calculator_clean_architecture/features/sip_calculator/presentation/bloc/sip_calculator_bloc.dart';

import '../../../../common/widgets/common_button.dart';
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
  late SipCalculatorBloc sipCalculatorBloc;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _investmentController.dispose();
    _returnRateController.dispose();
    _timePeriodController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    sipCalculatorBloc = context.read<SipCalculatorBloc>();
    _investmentController.text = sipCalculatorBloc.state.amount
        .toInt()
        .toString();
    _returnRateController.text = sipCalculatorBloc.state.returnRate
        .toInt()
        .toString();
    _timePeriodController.text = sipCalculatorBloc.state.timePeriod
        .toInt()
        .toString();
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
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: BlocBuilder<SipCalculatorBloc, SipCalculatorState>(
          builder: (context, state) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Container(
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
                      children: InvestmentType.values.map((type) {
                        return state.investmentType == type
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.teal[50],
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  type.name,
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            : IconButton(
                                icon: Text(
                                  type.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onPressed: () {
                                  context.read<SipCalculatorBloc>().add(
                                    SipCalculatorEvent.investmentTypeChanged(
                                      investmentType: type,
                                    ),
                                  );
                                },
                              );
                      }).toList(),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Investment Amount Section
                  CustomSliderWidget(
                    title: state.investmentType.isSIP
                        ? 'Monthly Investment'
                        : 'Investment Amount',
                    validator: (e) {
                      if (e == null || e.isEmpty) {
                        return state.investmentType.isSIP
                            ? 'Monthly Investment cannot be empty'
                            : 'Investment Amount cannot be empty';
                      }
                      double? amount = double.tryParse(e);
                      if (amount == null || amount < 1000 || amount > 100000) {
                        return state.investmentType.isSIP
                            ? 'Monthly Investment must be between ₹1000 and ₹100000'
                            : 'Investment Amount must be between ₹1000 and ₹100000';
                      }
                      return null;
                    },
                    value: state.amount,
                    min: 1000,
                    max: 100000,
                    divisions: 99,
                    controller: _investmentController,
                    onSliderChanged: (value) {
                      sipCalculatorBloc.add(
                        SipCalculatorEvent.amountChanged(amount: value),
                      );
                      _investmentController.text = value.toInt().toString();
                    },
                    onTextChanged: (value) {
                      if (value.isNotEmpty) {
                        double? newValue = double.tryParse(value);
                        if (newValue != null &&
                            newValue >= 1000 &&
                            newValue <= 100000) {
                          sipCalculatorBloc.add(
                            SipCalculatorEvent.amountChanged(amount: newValue),
                          );
                        }
                      }
                    },
                    prefix: '₹',
                  ),

                  const SizedBox(height: 24),

                  // Return Rate Section
                  CustomSliderWidget(
                    title: 'Expected return rate (p.a)',
                    validator: (e) {
                      if (e == null || e.isEmpty) {
                        return 'Return rate cannot be empty';
                      }
                      double? rate = double.tryParse(e);
                      if (rate == null || rate < 1 || rate > 30) {
                        return 'Return rate must be between 1% and 30%';
                      }
                      return null;
                    },
                    value: state.returnRate,
                    min: 1,
                    max: 30,
                    divisions: 29,
                    controller: _returnRateController,
                    onSliderChanged: (value) {
                      sipCalculatorBloc.add(
                        SipCalculatorEvent.returnRateChanged(returnRate: value),
                      );
                      _returnRateController.text = value.toInt().toString();
                    },
                    onTextChanged: (value) {
                      if (value.isNotEmpty) {
                        double? newValue = double.tryParse(value);
                        if (newValue != null &&
                            newValue >= 1 &&
                            newValue <= 30) {
                          sipCalculatorBloc.add(
                            SipCalculatorEvent.returnRateChanged(
                              returnRate: newValue,
                            ),
                          );
                        }
                      }
                    },
                    suffix: '%',
                  ),

                  const SizedBox(height: 24),

                  // Time Period Section
                  CustomSliderWidget(
                    title: 'Time period',
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Only allow digits
                    ],
                    validator: (e) {
                      if (e == null || e.isEmpty) {
                        return 'Investment Time period cannot be empty';
                      }
                      double? period = double.tryParse(e);
                      if (period == null || period < 1 || period > 30) {
                        return 'Investment Time period must be between 1 and 30 years';
                      }
                      return null;
                    },
                    value: state.timePeriod.toDouble(),
                    min: 1,
                    max: 30,
                    divisions: 29,
                    controller: _timePeriodController,
                    onSliderChanged: (value) {
                      sipCalculatorBloc.add(
                        SipCalculatorEvent.timePeriodChanged(
                          timePeriod: value.toInt(),
                        ),
                      );
                      _timePeriodController.text = value.toInt().toString();
                    },
                    onTextChanged: (value) {
                      if (value.isNotEmpty) {
                        double? newValue = double.tryParse(value);
                        if (newValue != null &&
                            newValue >= 1 &&
                            newValue <= 30) {
                          sipCalculatorBloc.add(
                            SipCalculatorEvent.timePeriodChanged(
                              timePeriod: newValue.toInt(),
                            ),
                          );
                        }
                      }
                    },
                    suffix: 'Yr',
                  ),

                  const SizedBox(height: 32),

                  // Calculate Button
                  SizedBox(
                    width: double.infinity,
                    child: CommonButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus(); // Dismiss keyboard
                        // Validate form before calculating
                        if (_formKey.currentState!.validate()) {
                          sipCalculatorBloc.add(
                            const SipCalculatorEvent.calculateClicked(),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter valid values.'),
                            ),
                          );
                        }
                      },
                      child: state.isLoading
                          ? SizedBox(
                              height: 24,
                              width: 24,
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              'CALCULATE',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Results Section
                  if (state.calculatedResult !=
                      CalculatedResultEntity.initial()) ...[
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
                          if (state.calculatedResult !=
                              CalculatedResultEntity.initial()) ...[
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: state.isLoading
                                      ? Container(height: 150)
                                      : Transform.rotate(
                                          angle: -pi / 2,
                                          child: PieChart(
                                            dataMap: state
                                                .calculatedResult
                                                .chartData,
                                            animationDuration: const Duration(
                                              milliseconds: 800,
                                            ),
                                            chartLegendSpacing: 32,
                                            chartRadius:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width /
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
                                              legendPosition:
                                                  LegendPosition.right,
                                              showLegends: false,
                                            ),
                                            chartValuesOptions:
                                                const ChartValuesOptions(
                                                  showChartValueBackground:
                                                      false,
                                                  showChartValues: false,
                                                  showChartValuesInPercentage:
                                                      false,
                                                  showChartValuesOutside: false,
                                                ),
                                          ),
                                        ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildLegendItem(
                                        'Invested amount',
                                        Colors.indigoAccent.withValues(
                                          alpha: 0.2,
                                        ),
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
                          _buildResultRow(
                            'Invested amount',
                            state.calculatedResult.investmentAmount,
                          ),
                          const SizedBox(height: 12),
                          _buildResultRow(
                            'Est. returns',
                            state.calculatedResult.estimatedReturns,
                          ),
                          const SizedBox(height: 12),
                          const Divider(),
                          const SizedBox(height: 12),
                          _buildResultRow(
                            'Total Amount',
                            state.calculatedResult.totalReturns,
                            isTotal: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
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
