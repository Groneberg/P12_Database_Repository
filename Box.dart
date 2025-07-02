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
    this.boxes[box.name] = box;
  }

  /// Adds an item to the current box.
  /// This allows for associating items with this specific box.
  void addItem(Item item) {
    this.items[name] = item;
  }

  Box? findBoxByName(String boxName) {
    // Check if the current box matches the name
    if (this.name == boxName) {
      return this;
    }
    // Recursively search in child boxes
    for (var boxEntrie in this.boxes.entries) {
      Box childBox = boxEntrie.value;
      var found = childBox.findBoxByName(boxName);
      // If a matching box is found in the child boxes, return it
      if (found != null) {
        return found;
      }
    }
    // If no matching box is found, return null
    return null;
  }

  void showBoxTree() {
    print(this.toString());
    if (this.boxes.isNotEmpty) {
      this.boxes.forEach((key, box) {
        // print('  ' + box.toString());
        box.showBoxTree(); // Recursively show child boxes
      });
    }
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
