//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DiccionarioV2.persistencia
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sinonimo
    {
        public int IdPalabra { get; set; }
        public int IdSinonimo { get; set; }
        public string Sinonimo1 { get; set; }
    
        public virtual Palabra Palabra { get; set; }
    }
}
