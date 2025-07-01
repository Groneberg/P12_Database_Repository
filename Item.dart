import 'Event.dart';

/// Represents an item with a name, description, amount, and associated events.
class Item {
  String name;
  String description;
  int amount = 0;
  int minAmount = 0;
  // map vielleicht besser ?
  Map<String,Event> events = {};

  Item(this.name, this.description, this.amount, this.minAmount);

  /// Adds an event to the current box.
  /// This allows for associating events with this specific box.
  void addEvent(Event event) {
    this.events[name] = event;
  }

  // TODO bessere umsetzung der Informationen
  @override
  String toString() {
    return 'Name: ${this.name}\n'
        'Description: ${this.description}\n'
        'Amount: ${this.amount}\n';
  }
}
