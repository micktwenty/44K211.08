
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Booking_Motorbike_44K21108.Models;
using System.Security.Cryptography;
using System.Text;

namespace Booking_Motorbike_44K21108.Controllers
{
    public class HomeController : Controller
    {
        BMEntities7 db = new BMEntities7();
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
        [ValidateAntiForgeryToken]
        public ActionResult dangnhap(NHACUNGCAP tv)
        {
            
                //var check = db.NHACUNGCAPs.FirstOrDefault(s => s.TenNCC == tv.TenNCC);
                //if (check == null)
                //{
            tv.MatKhau = GetMD5(tv.MatKhau);
           
            db.Configuration.ValidateOnSaveEnabled = false;
            db.NHACUNGCAPs.Add(tv);
            db.SaveChanges();
            return RedirectToAction("Index");
                //}
                //else
                //{
                //    ViewBag.error = "Tên tài khoản đã tồn tại!";
                //    return View();
                //}

           
            //db.NHACUNGCAPs.Add(tv);
            //db.SaveChanges();

            //return View();
        }
        public static string GetMD5(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] fromData = Encoding.UTF8.GetBytes(str);
            byte[] targetData = md5.ComputeHash(fromData);
            string byte2String = null;

            for (int i = 0; i < targetData.Length; i++)
            {
                byte2String += targetData[i].ToString("x2");

            }
            return byte2String;
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(string MaNCC, string MatKhau)
        {
            if (ModelState.IsValid)
            {


                var f_password = GetMD5(MatKhau);
                var data = db.NHACUNGCAPs.Where(s => s.MaNCC.Equals(MaNCC) && s.MatKhau.Equals(f_password)).ToList();
                if (data.Count() > 0)
                {
                    //add session
                    Session["TenNCC"] = data.FirstOrDefault().TenNCC;
                    Session["SDT_NCC"] = data.FirstOrDefault().SDT_NCC;
                    Session["MaNCC"] = data.FirstOrDefault().MaNCC;
                    return RedirectToAction("Index");
                }
                else
                {
                    ViewBag.error = "Login failed";
                    return RedirectToAction("Login");
                }
            }
            return View();
        }
        [HttpGet]
        public ActionResult DKT()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DKTS(KHACHHANG kh, THUEXE tx)
        {
            ViewBag.TenKH = kh.TenKH;
            //db.Configuration.ValidateOnSaveEnabled = false;

                db.KHACHHANGs.Add(kh);
                db.THUEXEs.Add(tx);
                db.SaveChanges();
                return View();

      

            
       
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Fback(FEEDBACK fb)
        {
            db.FEEDBACKs.Add(fb);
            db.SaveChanges();

            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();//remove session
            return RedirectToAction("Login");
        }

        public ActionResult thongtinxe()
        {
            return View();
        }

    }
}