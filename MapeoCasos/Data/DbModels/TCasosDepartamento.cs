using System;
using System.Collections.Generic;

namespace Data.DbModels
{
    public partial class TCasosDepartamento
    {
        public int IdDepartamento { get; set; }
        public string Departamento { get; set; }
        public int? Infectados { get; set; }
        public int? Muertos { get; set; }
        public int? Recuperados { get; set; }
    }
}
