using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Booking_Motorbike_44K21108.Models;


namespace Booking_Motorbike_44K21108.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: SanPham
        BMEntities1 db = new BMEntities1();
        [ChildActionOnly]
        public ActionResult SanPhamStyle1Partial()
        {
            return PartialView();
        }

        [ChildActionOnly]
        public ActionResult SanPhamStyle2Partial()
        {
            return PartialView();
        }
    }
}