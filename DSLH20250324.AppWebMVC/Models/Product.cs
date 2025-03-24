using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace DSLH20250324.AppWebMVC.Models;

public partial class Product
{
    [Display(Name = "IdProducto")]
    public int Id { get; set; }
    [Display(Name = "Nombre")]
    [Required(ErrorMessage = "El nombre es obligatorio.")]
    public string ProductName { get; set; } = null!;
    [Display(Name = "Descripcion")]
    public string? Description { get; set; }
    [Display(Name = "Precio")]
    [Required(ErrorMessage = "El precio es obligatorio.")]
    public decimal Price { get; set; }

    public decimal PurchasePrice { get; set; }

    [Display(Name = "Bodega")]
    public int? WarehouseId { get; set; }

    [Display(Name = "Marca")]
    public int? BrandId { get; set; }

    [Display(Name = "Notas")]
    public string? Notes { get; set; }
    [Display(Name = "Marca")]
    public virtual Brand? Brand { get; set; }
    [Display(Name = "Bodega")]
    public virtual Warehouse? Warehouse { get; set; }
}
