import 'Box.dart';
import 'Event.dart';
import 'Item.dart';
import 'DatabaseRepository.dart';

class MockDatabaseRepository implements DatabaseRepository {
  Box mainBox = Box("mainBox", "");
  Box currentBox = Box("currentBox", "");

  @override
  void createBox(Box box) async {
    // TODO: implement createBox
    print("This box will be saved: $box");
  }

  @override
  void createEvent(Event event) {
    // TODO: implement createEvent
    print("This event will be saved: $event");
  }

  @override
  void createItem(Item item) {
    // TODO: implement createItem
    print("This item will be saved: $item");
  }

  @override
  Map<String, Box> readAllBoxes() {
    // TODO: implement readAllBoxes
    Map<String, Box> boxes = {};
    return boxes;
  }

  @override
  Map<String, Event> readAllEvent() {
    // TODO: implement readAllEvent
    Map<String, Event> events = {};
    return events;
  }

  @override
  Box readBox(String name) {
    // TODO: implement readBox
    Box box = Box("name", "description");
    return box;
  }

  @override
  Event readEvent(String name) {
    // TODO: implement readEvent
    Event event = Event("name", "time", "date", "description");
    return event;
  }

  @override
  Item readItem(String name) {
    // TODO: implement readItem
    Item item = Item("name", "description", 1, 1);
    return item;
  }

  @override
  void updateBox(Box box) {
    // TODO: implement updateBox
    print("The box $box will be updated.");
  }

  @override
  void updateEvent(Event event) {
    // TODO: implement updateEvent
    print("The event $event will be updated.");
  }

  @override
  void updateItem(Item item) {
    // TODO: implement updateItem
    print("The item $item will be updated.");
  }

  @override
  void deleteBox(String name) {
    // TODO: implement deleteBox
    print("The box $name will be deleted.");
  }

  @override
  void deleteEvent(String name) {
    // TODO: implement deleteEvent
    print("The Event $name will be deleted.");
  }

  @override
  void deleteItem(String name) {
    // TODO: implement deleteItem
    print("The item $name will be deleted.");
  }
}
