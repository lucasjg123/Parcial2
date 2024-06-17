using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Parcial2
{
    public class Archivo
    {
        public string Name { get; set; }
        public string FilePath { get; set; }
        public Archivo(string name, string filepath)
        {
            Name = name;
            FilePath = filepath;
        }
    }
}