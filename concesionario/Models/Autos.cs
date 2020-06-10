//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace concesionario.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Autos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Autos()
        {
            this.Auto_Adiccionales = new HashSet<Auto_Adiccionales>();
            this.AutoExistencia = new HashSet<AutoExistencia>();
            this.VentaAuto = new HashSet<VentaAuto>();
        }
    
        public int IdAutos { get; set; }
        public string Marca { get; set; }
        public Nullable<int> IdColor { get; set; }
        public Nullable<int> IdModelo { get; set; }
        public Nullable<int> IdAnio { get; set; }
        public Nullable<decimal> Precio { get; set; }
    
        public virtual Anio Anio { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Auto_Adiccionales> Auto_Adiccionales { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AutoExistencia> AutoExistencia { get; set; }
        public virtual Color Color { get; set; }
        public virtual Modelo Modelo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VentaAuto> VentaAuto { get; set; }
    }
}
