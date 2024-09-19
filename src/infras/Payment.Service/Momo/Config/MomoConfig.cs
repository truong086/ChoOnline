﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Payment.Service.Momo.Config
{
    public class MomoConfig
    {
        public static string ConfigName => "Momo";
        public static string PartnerCode {  get; set; } = string.Empty;
        public static string ReturnUrl {  get; set; } = string.Empty;
        public static string IpnUrl {  get; set; } = string.Empty;
        public static string AccessKey {  get; set; } = string.Empty;
        public static string SceretKey {  get; set; } = string.Empty;
        public static string PaymentUrl {  get; set; } = string.Empty;

    }
}
