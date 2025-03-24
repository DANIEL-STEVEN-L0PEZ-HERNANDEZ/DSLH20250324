using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DSLH20250324.AppWebMVC.Models;

public partial class Brand
{
    [Display(Name = "IdMarca")]
    public int Id { get; set; }
    [Display(Name = "Nombre")]
    [Required(ErrorMessage = "El nombre es obligatorio.")]
    public string BrandName { get; set; } = null!;
    [Display(Name = "País")]

    public string? Country { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
