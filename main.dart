class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up the card
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay bus fare
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

// Part 2: StudentCard
class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Apply student discount
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}

// Part 3: Main Method
void main() {
  BusCard card = BusCard('Asif Kamal Ahmed Abdalla', 1170);

  // TODO 5: Test owner setter
  card.owner = 'Al';
  card.owner = 'Asif Kamal Ahmed Abdalla';
  card.showInfo();

  // TODO 6: Test top up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Test payment
  card.pay(217);
  card.pay(217);
  card.showInfo();

  // TODO 8: Create student card
  StudentCard student = StudentCard('Asif Kamal Ahmed Abdalla', 1170, 17);

  // TODO 9: Test student payment
  student.pay(217);
  student.showInfo();
}
