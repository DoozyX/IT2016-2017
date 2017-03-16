using System;
using System.Collections.Generic;
using System.Linq;

namespace p1 {
    public class Agency {
        private Dictionary<int, CashDeck> cashDecks;
        private Dictionary<int, CashDeck> cashDecksWithouTickets;

        public static string[] Destinations = {
            "Rim", "London", "Tokio", "Sofija", "Instambul", "Toronto", "Majami",
            "Zagreb", "Belgrad", "Moskva"
        };

        public Agency() {
            cashDecks = new Dictionary<int, CashDeck>();
            cashDecksWithouTickets = new Dictionary<int, CashDeck>();
        }

        private static string GetDestinaions() {
            return "Destinacii: " +
                   "Rim London Tokio Sofija Instambul Toronto Majami Zagreb Belgrad Moskva";
        }

        private static bool CheckDestination(string destination) {
            return Destinations.Any(city => string.Equals(city, destination, StringComparison.CurrentCultureIgnoreCase));
        }

        public void PrintMenu() {
            Console.WriteLine("1. Usluzi go klientot");
            Console.WriteLine("2. Prodadeni karti na salter");
            Console.WriteLine("3. Vkupen promet na salter");
            Console.WriteLine("4. Site prodadeni karti");
            Console.WriteLine("5. Vkupen promet");
            Console.WriteLine("6. Uspesnost na agencija");
            Console.WriteLine("7. Izlez");
            Console.WriteLine("Vnesete broj za koj opcija sakate da ja izberete:");
        }


        private static int ReadInt() {
            while (true) {
                if (Int32.TryParse(Console.ReadLine(), out int num)) {
                    if (num >= 0) {
                        return num;
                    } else {
                        Console.WriteLine("Pogresen input, Probajte povtorno");
                    }
                } else {
                    Console.WriteLine("Pogresen input, Probajte povtorno");
                }
            }
        }

        public void ServeClient() {
            Console.WriteLine("Vnesete ime");
            string name = Console.ReadLine();
            Console.WriteLine("Vnesete prezime");
            string surname = Console.ReadLine();
            Console.WriteLine("Vnesete godini");
            int age = ReadInt();
            Console.WriteLine(GetDestinaions());
            Console.WriteLine("Vnesete lokacija");
            string destination = Console.ReadLine();
            Console.WriteLine("Vnesete kasa");
            int cashDeck = ReadInt();

            DateTime time = DateTime.Now;

            Ticket ticket = new Ticket(name, surname, age, destination, cashDeck, time);

            CashDeck currentDeck;

            if (CheckDestination(destination)) {
                if (!cashDecks.TryGetValue(cashDeck, out currentDeck)) {
                    currentDeck = new CashDeck(cashDeck);
                    cashDecks[cashDeck] = currentDeck;
                }
            } else {
                if (!cashDecksWithouTickets.TryGetValue(cashDeck, out currentDeck)) {
                    currentDeck = new CashDeck(cashDeck);
                    cashDecksWithouTickets[cashDeck] = currentDeck;
                }
            }
            currentDeck.AddTicket(ticket);


            Console.WriteLine();
        }

        static DateTime ReadDateTime() {
            string date = Console.ReadLine();
            try {
                return Convert.ToDateTime(date);
            } catch {
                Console.WriteLine("Pogrsna data, vnesete povtorno");
                return ReadDateTime();
            }
        }

        public void CardsOnCashDeck() {
            Console.WriteLine("Vnesete go slaterot");
            int cashDeck = ReadInt();
            if (!cashDecks.TryGetValue(cashDeck, out CashDeck cashDeckValue)) {
                Console.WriteLine("Ne postoi toj salter.");
                return;
            }

            Console.WriteLine("Vnesete ja pocetnata data vo format dd/mm/yyyy");
            DateTime startsDate = ReadDateTime();
            Console.WriteLine("Vnesete ja krajnata data vo format dd/mm/yyyy");
            DateTime endDate = ReadDateTime();

            List<Ticket> inRange = cashDeckValue.GetInRange(startsDate, endDate);
            Console.WriteLine("\nLista od prodadeni karti:");
            foreach (var ticket in inRange) {
                Console.WriteLine(ticket);
            }
            Console.WriteLine();
        }

        public void ProfitOnCashDack() {
            Console.WriteLine("Vnesete go slaterot");
            var cashDeck = ReadInt();
            if (!cashDecks.TryGetValue(cashDeck, out CashDeck cashDeckValue)) {
                Console.WriteLine("Ne postoi toj salter.");
                return;
            }

            Console.WriteLine("Vnesete ja pocetnata data");
            DateTime startsDate = ReadDateTime();
            Console.WriteLine("Vnesete ja krajnata data");
            DateTime endDate = ReadDateTime();

            Console.WriteLine("\nProfitot na salterot " + cashDeck + " e:" +
                              cashDeckValue.GetProfitInRange(startsDate, endDate));
            Console.WriteLine();
        }

        public void AllTickets() {
            Console.WriteLine("Vnesete ja pocetnata data");
            DateTime startsDate = ReadDateTime();
            Console.WriteLine("Vnesete ja krajnata data");
            DateTime endDate = ReadDateTime();

            Console.WriteLine("\nTiiketite se");
            foreach (var cachDeck in cashDecks.Values) {
                Console.WriteLine("Broj na slater: " + cachDeck.Number + "");
                List<Ticket> tickets = cachDeck.GetInRange(startsDate, endDate);
                foreach (var ticket in tickets) {
                    Console.WriteLine(ticket);
                }
                Console.WriteLine();
            }
            Console.WriteLine();
        }

        public void TotalProfit() {
            int profit = 0;
            foreach (var cachDeck in cashDecks.Values) {
                foreach (var ticket in cachDeck.Tickets) {
                    profit += ticket.Price;
                }
            }
            Console.WriteLine("\nVkupniot profit e: " + profit);
            Console.WriteLine();
        }

        public void GetSucsuccessfulness() {
            int tickets = 0;
            foreach (var cachDeck in cashDecks.Values) {
                tickets += cachDeck.Tickets.Count;
            }
            int unserved = 0;
            foreach (var cashDecksWithouTicket in cashDecksWithouTickets.Values) {
                unserved += cashDecksWithouTicket.Tickets.Count;
            }
            Console.WriteLine("Uspesnost na kompanijata e: " + (double)tickets / (tickets + unserved));
            Console.WriteLine();
        }
    }
}