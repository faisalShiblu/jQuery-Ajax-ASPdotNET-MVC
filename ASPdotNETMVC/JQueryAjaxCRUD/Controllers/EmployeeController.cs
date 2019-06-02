using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using JQueryAjaxCRUD.Models;

namespace JQueryAjaxCRUD.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ViewAll()
        {
            return View(GetAllEmployee());
        }

        public ActionResult AddOrEdit(int id = 0)
        {
            Employee employee = new Employee();
            if (id != 0)
            {
                using (ApplicationDbContext _db = new ApplicationDbContext())
                {
                    employee = _db.Employees.Where(x => x.EmployeeID == id).FirstOrDefault<Employee>();
                }
            }
            return View(employee);
        }

        //[HttpPost]
        //public ActionResult AddOrEdit(Employee employee)
        //{
        //    try
        //    {
        //        if (employee.ImageUpload != null)
        //        {
        //            string fileName = Path.GetFileNameWithoutExtension(employee.ImageUpload.FileName);
        //            string extension = Path.GetExtension(employee.ImageUpload.FileName);
        //            fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
        //            employee.ImagePath = "~/AppFiles/Images/" + fileName;
        //            employee.ImageUpload.SaveAs(Path.Combine(Server.MapPath("~/AppFiles/Images/"), fileName));
        //        }
        //        using (ApplicationDbContext _db = new ApplicationDbContext())
        //        {
        //            if (employee.EmployeeID == 0)
        //            {
        //                _db.Employees.Add(employee);
        //                _db.SaveChanges();
        //            }
        //            else
        //            {
        //                _db.Entry(employee).State = EntityState.Modified;
        //                _db.SaveChanges();

        //            }
        //        }
        //        return Json(new { success = true, html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllEmployee()), message = "Submitted Successfully" }, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {

        //        return Json(new { success = false, message = ex.Message }, JsonRequestBehavior.AllowGet);
        //    }
        //}

        //public ActionResult Delete(int id)
        //{
        //    try
        //    {
        //        using (ApplicationDbContext db = new ApplicationDbContext())
        //        {
        //            Employee emp = db.Employees.Where(x => x.EmployeeID == id).FirstOrDefault<Employee>();
        //            db.Employees.Remove(emp);
        //            db.SaveChanges();
        //        }
        //        return Json(new { success = true, html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllEmployee()), message = "Deleted Successfully" }, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {
        //        return Json(new { success = false, message = ex.Message }, JsonRequestBehavior.AllowGet);
        //    }
        //}


        IEnumerable<Employee> GetAllEmployee()
        {
            using (ApplicationDbContext _db = new ApplicationDbContext())
            {
                return _db.Employees.ToList();
            }

        }

    }
}