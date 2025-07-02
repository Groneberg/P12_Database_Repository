import 'Event.dart';
import 'Item.dart';

/// Represents a box that can contain other boxes, items, and events.
class Box {
  String name;
  String description;
  // map vielleicht besser ?
  Map<String,Box> boxes = {};
  // map vielleicht besser ?
  Map<String,Item> items = {};
  // map vielleicht besser ?
  Map<String,Event> events = {};

  Box(this.name, this.description);

  /// Adds a sub-box to the current box.
  /// This allows for creating a hierarchy of boxes.
  void addBox(Box box) {
    this.boxes[name] = box;
  }

  /// Adds an item to the current box.
  /// This allows for associating items with this specific box.
  void addItem(Item item) {
    this.items[name] = item;
  }

  /// Adds an event to the current box.
  /// This allows for associating events with this specific box.
  void addEvent(Event event) {
    this.events[name] = event;
  }

  // TODO bessere umsetzung der Informationen
  @override
  String toString() {
    return 'Name: ${this.name}\n'
        'Description: ${this.description}';
  }
}
