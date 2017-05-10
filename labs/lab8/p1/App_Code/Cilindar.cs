using System;

namespace p1 {
    /// <summary>
    /// Summary description for Cilindar
    /// </summary>
    public class Cilindar : IComparable<Cilindar> {
        public double Height { set; get; }
        public double Radius { set; get; }

        public Cilindar() {
            Height = 0;
            Radius = 0;
        }

        public double Volume {
            get { return Math.PI * Radius * Radius * Height; }
        }

        public double Area {
            get { return (2 * Math.PI * Radius * Height) + (2 * Math.PI * Radius * Radius); }
        }

        public int CompareTo(Cilindar other) {
            if (ReferenceEquals(this, other)) return 0;
            return ReferenceEquals(null, other) ? 1 : Volume.CompareTo(other.Volume);
        }

        public override string ToString() {
            return Radius + " " + Height;
        }
    }
}