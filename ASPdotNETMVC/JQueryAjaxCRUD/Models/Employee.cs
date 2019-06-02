using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace JQueryAjaxCRUD.Models
{
    public class Employee
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int EmployeeID { get; set; }

        [StringLength(255)]
        [Column(TypeName = "NVARCHAR")]
        [Display(Name = "Name")]
        [Required(ErrorMessage = "This field is required.")]
        public string EmployeeName { get; set; }

        [StringLength(64)]
        [Column(TypeName = "NVARCHAR")]
        public string Position { get; set; }

        [Required(ErrorMessage = "This field is required.")]
        [StringLength(128)]
        [Column(TypeName = "NVARCHAR")]
        public string Office { get; set; }

        [Required(ErrorMessage = "This field is required.")]
        public int? Salary { get; set; }

        [Display(Name = "Image")]
        public string ImagePath { get; set; }

        [NotMapped]
        public HttpPostedFileBase ImageUpload { get; set; }

        public Employee() => ImagePath = "~/AppFiles/Images/default.png";

    }
}