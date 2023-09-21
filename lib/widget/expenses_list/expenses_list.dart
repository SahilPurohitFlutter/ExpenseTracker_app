import 'package:demoexpense_tracker/model/expense.dart';
import 'package:demoexpense_tracker/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
              key: ValueKey(
                expenses[index],
              ),
              background: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.70),
                      ),
                      child:const Icon(
                        Icons.delete,
                        size: 40,
                        color: Colors.white,
                      ),

                      // ma,rgin: EdgeInsets.symmetric(
                      //     horizontal: Theme.of(context).cardTheme.margin!.horizontal)
                    ),
                  ],
                ),
              ),
              onDismissed: (direction) {
                onRemoveExpense(
                  expenses[index],
                );
              },
              child: ExpenseItem(
                expenses[index],
              ),
            ));
  }
}
