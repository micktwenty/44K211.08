using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Booking_Motorbike_44K21108.Models;
using PagedList;

namespace Booking_Motorbike_44K21108.Controllers
{
    public class TimKiemController : Controller
    {
        BMEntities6 db = new BMEntities6();
        

        [HttpGet]
        public ActionResult KQTimKiem(string sTuKhoa, int? page)
        {
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            //Tìm Kiếm the tên sản phẩm

            var lstSP = db.XEs.Where(n => n.TenXe.Contains(sTuKhoa) || n.LoaiXe.Contains(sTuKhoa));
            int pageSize = 21;
            int pageNumber = (page ?? 1);
            return View(lstSP.OrderBy(n => n.GiaXe).ToPagedList(pageNumber, pageSize));
        }

        [HttpPost]
        public ActionResult LayTuKhoa(string sTuKhoa)
        {

            return RedirectToAction("KQTimKiem", new { @sTuKhoa = sTuKhoa });
        }
    }
}