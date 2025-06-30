import 'Box.dart';
import 'Event.dart';
import 'Item.dart';

/// Interface for a database repository.
abstract class DatabaseRepository {
  Future<List<Box>> readAllBoxes();
  Future<List<Event>> readAllEvent();
  Future<Box> readBox(String name);
  Future<Event> readEvent(String name);
  Future<Item> readItem(String name);
  Future<void> createBox(String box);
  Future<void> createEvent(String event);
  Future<void> createItem(String item);
  Future<void> updateBox(Box box);
  Future<void> updateEvent(Event event);
  Future<void> updateItem(Item item);
  Future<void> deleteBox(String name);
  Future<void> deleteEvent(String name);
  Future<void> deleteItem(String name);
}