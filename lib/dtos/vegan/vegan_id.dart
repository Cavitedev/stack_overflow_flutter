class VeganId {
  final String id;

  VeganId(this.id);

  String itemId() {
    return id;
  }

  @override
  String toString() {
    return 'VeganId{id: $id}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VeganId && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
