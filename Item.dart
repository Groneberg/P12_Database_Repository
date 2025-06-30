import 'Event.dart';

/// Represents an item with a name, description, amount, and associated events.
class Item {
  String name;
  String description;
  int amount = 0;
  // map vielleicht besser ?
  List<Event> events = [];

  Item(this.name, this.description, this.amount);

  /// Adds an event to the current item.
  /// This allows for associating events with a specific item.
  void addEventToItem(Event event) {
    this.events.add(event);
  }

  @override
  String toString() {
    return 'Name: ${this.name}\n'
        'Description: ${this.description}\n'
        'Amount: ${this.amount}\n';
  }
}
