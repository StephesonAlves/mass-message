using System;
using Xunit;

namespace MassMessage.Test
{
    public class ExemploTemplateTest
    {
        [Fact]
        public void Test1()
        {
            Casa casa = new Casa();
            Predio predio = new Predio();
            Barraco barraco = new Barraco();

            MostraNome<Entidade>(casa);
            MostraNome<Entidade>(predio);

            try
            {
                MostraNome<Entidade>(barraco);
            } 
            catch (Exception e)
            {
                Console.Write(e.Message);
            }
        }


        public void MostraNome<T>(T obj) where T : Entidade
        {
            //try
            //{
                Console.WriteLine(obj.QuemSouEu());
            //} 
            //catch (Exception e)
            //{
            //    Console.Write(e.Message);
            //}
        }

        public class Entidade
        {
            public virtual string QuemSouEu() {
                return string.Empty;
            }
        }

        public class Casa : Entidade
        {
            public override string QuemSouEu()
            {
                return "eu sou uma casa";
            }
        }
        public class Predio : Entidade
        {
            public override string QuemSouEu()
            {
                return "eu sou um predio";
            }
        }

        public class Barraco : Entidade
        {

            public override string QuemSouEu()
            {
                throw new Exception();
            }

        }
    }
}
