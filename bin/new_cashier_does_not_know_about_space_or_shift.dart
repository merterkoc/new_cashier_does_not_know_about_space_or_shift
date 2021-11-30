import 'package:new_cashier_does_not_know_about_space_or_shift/new_cashier_does_not_know_about_space_or_shift.dart'
    as new_cashier_does_not_know_about_space_or_shift;

void main(List<String> arguments) {
  print(getOrder(
      'milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza'));
}

String getOrder(String input) {
  List order = [];
  List menu = [
    'Burger',
    'Fries',
    'Chicken',
    'Pizza',
    'Sandwich',
    'Onionrings',
    'Milkshake',
    'Coke'
  ];
  menu.forEach((element) {
    if (input.contains(element.toString().toLowerCase())) {
      var sayi = element
          .toString()
          .toLowerCase()
          .allMatches(input.toString().toLowerCase())
          .length;
      for (var i = 0; i < sayi; i++) {
        order.add(element);
      }
    }
  });
  String str = order
      .toString()
      .replaceAll('[', '')
      .replaceAll(']', '')
      .replaceAll(',', '');
  //print(str);
  return str;
}
