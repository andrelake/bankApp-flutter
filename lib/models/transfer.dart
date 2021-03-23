class Transfer {
  final double value;
  final int accNumber;

  Transfer(this.value, this.accNumber);

  @override
  String toString() {
    return 'Transfer{value: $value, accNumber: $accNumber}';
  }
}