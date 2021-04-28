﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Booking_Motorbike_44K21108.Models;

namespace Booking_Motorbike_44K21108.Controllers
{
    public class HomeController : Controller
    {
        BMEntities2 db = new BMEntities2();
        // GET: Home
        public ActionResult Index()
        {
            //tao viewbag
            var lstXe = db.XEs.Where(n => n.LoaiXe == "Honda" && n.TrangThai==false);
            ViewBag.LstXe = lstXe;

            var lstXey = db.XEs.Where(n => n.LoaiXe == "Yamaha" && n.TrangThai == false);
            ViewBag.LstXey = lstXey;


            return View();
        }
        public ActionResult Details(string id)
        {
            var model = db.XEs.Find(id);
            return View(model);
        }
        [HttpGet]
        public ActionResult dangnhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult dangnhap(NHACUNGCAP tv)
        {
            db.NHACUNGCAPs.Add(tv);
            db.SaveChanges();

            return View();
        }

        public ActionResult thongtinxe()
        {
            return View();
        }

    }
}