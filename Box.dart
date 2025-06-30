import 'Event.dart';
import 'Item.dart';

/// Represents a box that can contain other boxes, items, and events.
class Box {
  String name;
  String description;
  // map vielleicht besser ?
  List<Box> boxes = [];
  // map vielleicht besser ?
  List<Item> items = [];
  // map vielleicht besser ?
  List<Event> events = [];

  Box(this.name, this.description);

  /// Adds a sub-box to the current box.
  /// This allows for creating a hierarchy of boxes.
  void addBox(Box box) {
    this.boxes.add(box);
  }

  /// Adds an item to the current box.
  /// This allows for associating items with a specific box.
  void addItemToBox(Item item) {
    this.items.add(item);
  }

  /// Adds an event to the current box.
  /// This allows for associating events with a specific box.
  void addEventToBox(Event event) {
    this.events.add(event);
  }

  @override
  String toString() {
    return 'Name: ${this.name}\n'
        'Description: ${this.description}';
  }
}
