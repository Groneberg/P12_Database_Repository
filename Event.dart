/// Represents an event with a name, time, date, and description.
class Event {
  String name;
  String time;
  String date;
  String description;

  Event(this.name, this.time, this.date, this.description);


  // TODO bessere umsetzung der Informationen
  @override
  String toString() {
    return 'Event: $name\n'
        'Date: ${this.date}\n'
        'Time: ${this.time}\n'
        'Description: $description';
  }
}
