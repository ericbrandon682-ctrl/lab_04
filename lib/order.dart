/// Order data for the Order Summary screen.
const String orderItemName = 'Cheese Pizza';
const int orderQuantity = 2;
const double orderUnitPrice = 12.50;

/// Total price in RM.
double orderTotal() => orderQuantity * orderUnitPrice;
