1. Inputs: orderItemName, orderQuantity and orderTotal() from lib/order.dart.
2. Output: A screen showing the item name, quantity and total price as "RM 0.00".
3. Rules: The total must come from orderTotal() (not hard-coded), with 2 decimal places.
4. Navigation: A Back button calls Navigator.pop(context).
5. Out of scope: Editing quantities, payment, multiple items, saving orders.
6. Check: A widget test confirms "Item: Cheese Pizza", "Quantity: 2" and "Total: RM 25.00".