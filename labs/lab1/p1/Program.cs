using System;

namespace p1 {
    class Program {
        private static int ReadChoice(string input) {
            int choice;
            while (true) {
                if (Int32.TryParse(input, out choice)) {
                    break;
                } else {
                    Console.WriteLine("Pogresen input, vnesete broj za koja opcija sakate da ja izberete.");
                    input = Console.ReadLine();
                }
            }

            return choice;
        }

        static void Main() {
            bool exit = false;
            Agency agency = new Agency();

            do {
                agency.PrintMenu();

                var input = Console.ReadLine();
                var choice = ReadChoice(input);

                switch (choice) {
                    case 1:
                        agency.ServeClient();
                        break;
                    case 2:
                        agency.CardsOnCashDeck();
                        break;
                    case 3:
                        agency.ProfitOnCashDack();
                        break;
                    case 4:
                        agency.AllTickets();
                        break;
                    case 5:
                        agency.TotalProfit();
                        break;
                    case 6:
                        agency.GetSucsuccessfulness();
                        break;
                    case 7:
                        exit = true;
                        break;
                    default:
                        Console.WriteLine("Izbraniot broj ne e vazecki.");
                        break;
                }
                if (choice == 7) {
                    break;
                }
            } while (!exit);
        }
    }   
}