using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace DSLH20250324.AppWebMVC.Models;

public partial class User
{
    public int Id { get; set; }

    public string Username { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Role { get; set; } = null!;

    public string? Notes { get; set; }

    public byte? Status { get; set; }
    private string strEstatus;
    [NotMapped]
    public string StrEstatus
    {
        get
        {
            if (Status == 1)
                strEstatus = "Activo";
            else if (Status == 2)
                strEstatus = "Inactivo";
            return strEstatus;
        }
        set { strEstatus = value; }
    }
}
