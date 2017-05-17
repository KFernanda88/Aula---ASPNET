using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace Aula1605.Models
{
    public class Projeto
    {
        [Key]

        public string ProjetoID { get; set; }

        [Required]
        public string Nome { get; set; }

        [Display (Name = "Descricao")]
        public string Descricao { get; set; }


        public bool Ativo { get; set; }
         

    }
}