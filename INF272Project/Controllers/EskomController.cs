﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace INF272Project.Controllers
{
    public class EskomController : Controller
    {
        // GET: Telkom
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult UserCRUD()
        {
            return View();
        }
        public ActionResult HomePage()
        {
            return View();
        }
        public ActionResult SiloCRUD()
        {
            return View();
        }
        public ActionResult SupplierCRUD()
        {
            return View();
        }
        
        //Additons by - Steven
        public ActionResult MaintenanceRoster()
        {
            return View();
        }
        public ActionResult SupplierInfo()
        {
            return View();
        }
        public ActionResult DistributionCenterCRUD()
        {
            return View();
        }
        public ActionResult PowerPlantCRUD()
        {
            return View();
        }

    }
}