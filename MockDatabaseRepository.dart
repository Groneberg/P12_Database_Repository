import 'Box.dart';
import 'Event.dart';
import 'Item.dart';
import 'DatabaseRepository.dart';

class MockDatabaseRepository implements DatabaseRepository {
  @override
  Future<void> createBox(Box box) async {
    // TODO: implement createBox
    print("This box will be saved: $box");
  }

  @override
  Future<void> createEvent(Event event) async {
    // TODO: implement createEvent
    print("This event will be saved: $event");
  }

  @override
  Future<void> createItem(Item item) async {
    // TODO: implement createItem
    print("This item will be saved: $item");
  }

  @override
  Future<List<Box>> readAllBoxes() async {
    // TODO: implement readAllBoxes
    List<Box> boxes = [];
    return boxes;
  }

  @override
  Future<List<Event>> readAllEvent() async {
    // TODO: implement readAllEvent
    List<Event> events = [];
    return events;
  }

  @override
  Future<Box> readBox(String name) async {
    // TODO: implement readBox
    Box box = Box("name", "description");
    return box;
  }

  @override
  Future<Event> readEvent(String name) async {
    // TODO: implement readEvent
    Event event = Event("name", "time", "date", "description");
    return event;
  }

  @override
  Future<Item> readItem(String name) async {
    // TODO: implement readItem
    Item item = Item("name", "description", 1);
    return item;
  }

  @override
  Future<void> updateBox(Box box) async {
    // TODO: implement updateBox
    print("The box $box will be updated.");
  }

  @override
  Future<void> updateEvent(Event event) async {
    // TODO: implement updateEvent
    print("The event $event will be updated.");
  }

  @override
  Future<void> updateItem(Item item) async {
    // TODO: implement updateItem
    print("The item $item will be updated.");
  }

  @override
  Future<void> deleteBox(String name) async {
    // TODO: implement deleteBox
    print("The box $name will be deleted.");
  }

  @override
  Future<void> deleteEvent(String name) async {
    // TODO: implement deleteEvent
    print("The Event $name will be deleted.");
  }

  @override
  Future<void> deleteItem(String name) async {
    // TODO: implement deleteItem
    print("The item $name will be deleted.");
  }
}
