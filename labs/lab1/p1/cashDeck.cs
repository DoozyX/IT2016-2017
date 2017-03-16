using System;
using System.Collections.Generic;


namespace p1 {
    class CashDeck {
        private List<Ticket> tickets;

        public CashDeck(int number) {
            Number = number;
            tickets = new List<Ticket>();
        }

        public void AddTicket(Ticket ticket) {
            tickets.Add(ticket);
        }

        public List<Ticket> GetInRange(DateTime from, DateTime to) {
            List<Ticket> inRange = new List<Ticket>();
            foreach (var ticket in tickets) {
                if (ticket.Time<= to.AddDays(1) && ticket.Time >= from) {
                    inRange.Add(ticket);
                }
            }
            return inRange;
        }

        public int GetProfitInRange(DateTime from, DateTime to) {
            int profit = 0;
            foreach (var ticket in tickets) {
                if (ticket.Time <= to.AddDays(1) && ticket.Time >= from) {
                    profit += ticket.Price;
                }
            }
            return profit;
        }

        public int Number { get; }

        public List<Ticket> Tickets => tickets;
    }
}