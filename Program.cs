using System;

namespace Simple_Docker_Example
{
    internal class Program
    {
        static void Main(string[] args)
        {

            int i = 0;
            while (i < 1000)
            {
                Console.WriteLine("Hello World!");
                i++;
                System.Threading.Thread.Sleep(1000);
            }
        }
    }
}
