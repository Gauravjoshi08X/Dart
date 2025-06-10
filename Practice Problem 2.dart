// A simple Expense tracker using OOP in Dart
import 'dart:convert';
import 'dart:io';

class Expense {
	final file= File("expense.txt");
  late int spent;	// Promise to assign value to this variable before using.
	late String reason;
	// Async Function. Doesnt block program flow.
	void startFunc() async {
		print("How much money did you spent??");
		spent = int.parse(stdin.readLineSync()!);
		print("Where did you spent it??");
		reason = stdin.readLineSync()!;

		if (!(await file.exists())) {
			await file.create(recursive: false);
		}
		await file.writeAsString("\"$reason\":$spent,", mode: FileMode.append);
	}
}
// mixin is for multiple inheritance since dart avoids diamond shape problem. Another method is using implement with @override
mixin TransactionHistory on Expense{
	final transactionFile=File("transaction.txt");
	void transactionHistory() async {
		if (!(await transactionFile.exists())) {
			await transactionFile.create(recursive: false);	//Recursive means no parent directory to make
		} 
    await transactionFile.writeAsString("Spent $spent on ${DateTime.now()}\n", mode: FileMode.append);
	}
}

mixin GetExpense on Expense
{

  Map<String, dynamic> expenseMap={};
	void showExpense() async
	{
		if (await file.exists())
    {
			String strData=await file.readAsString();
			// removed , at the end
			expenseMap.addAll(jsonDecode("{${strData.substring(0,strData.length-2)+""}}"));	// jsonDecodes convert a string map to json
			for (String key in expenseMap.keys)
			{
				print("Spent ${expenseMap[key]}: $key");
			}

	}}}

	mixin GetTransaction{
	final transactionFile=File("transaction.txt");
	void getTransaction() async {
		if (await transactionFile.exists()) {
			(await transactionFile.readAsString()).split("\n").forEach(print);
		}
	}
}

class MainClass extends Expense with TransactionHistory, GetExpense, GetTransaction	//with is used for multiple inheritance when using mixin
{
	MainClass()
	{
		print("Add an Expense (add)\nGet Expense (get)\nGet Expense History (history)");
		String choice=(stdin.readLineSync()!).toLowerCase();
		switch (choice){
			case "add":
				startFunc();
				transactionHistory();
			case "get":
				showExpense();
			case "history":
				getTransaction();
			default:
				print("Please enter listed input..");
	}}
}


void main() {
	MainClass mainClass = MainClass();

}