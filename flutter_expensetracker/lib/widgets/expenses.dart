import 'package:flutter/material.dart';
import 'package:flutter_expensetracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter_expensetracker/models/expense.dart';
import 'package:flutter_expensetracker/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        id: "1",
        title: "Flutter Course",
        amount: 19.99,
        dateTime: DateTime.now(),
        category: Category.work),
    Expense(
        id: "2",
        title: "Cinema",
        amount: 29.99,
        dateTime: DateTime.now(),
        category: Category.leisure),
  ];

  void _addOpenExpenseOverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(
              onAddExpense: _addExpense,
            ));
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);

    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("Expense Item is removed."),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text("No expenses found. Starting add some!"),
    );

    if (_registeredExpenses.isNotEmpty) {
      content = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense App'),
        actions: [
          IconButton(
              onPressed: _addOpenExpenseOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Text("Chart"),
          Expanded(child: content)
        ],
      ),
    );
  }
}
