/*
replace id with uuid package
*/

// import 'package:uuid/uuid.dart';
// const uuid = UUID();

// import 'package:intl/intl.dart';
// final formatter = DateFormat.yMd();

import 'package:flutter/material.dart';

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.leisure: Icons.movie,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work
};

class Expense {
  Expense(
      {required this.id,
      required this.title,
      required this.amount,
      required this.dateTime,
      required this.category});

  // Expense(
  //     {required this.id,
  //     required this.title,
  //     required this.amount,
  //     required this.category,
  //     required this.dateTime}): id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime dateTime;
  final Category category;

  String get formatedDate {
    return dateTime.toString();
  }

  // String get formatedDate {
  //   return formatter.format(date);
  // }
}

class ExpenseBucket {
  const ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpense {
    double sum = 0;

    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
