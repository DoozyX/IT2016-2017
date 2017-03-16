using System;

namespace p1 {
    class Ticket {
        private string name;
        private string surname;
        private int age;
        private string destination;
        private int cashDeck;
        private DateTime time;

        public Ticket(string name, string surname, int age, string destination, int cashDeck, DateTime time) {
            this.name = name;
            this.surname = surname;
            this.age = age;
            this.destination = destination;
            this.cashDeck = cashDeck;
            this.time = time;
            Price = CalculatePrice();
        }

        private int CalculatePrice() {
            return destination.Length * 1000;
        }

        public string Name => name;

        public string Surname => surname;

        public int Age => age;

        public string Destination => destination;

        public int CashDeck => cashDeck;

        public DateTime Time => time;

        public int Price { get; }

        public override string ToString() {
            return name + " " + surname + " " + age + " " + destination + " " + cashDeck + " " + time;
        }
    }
}