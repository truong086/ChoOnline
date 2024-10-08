﻿using Payment.Domain.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace Payment.Domain.Entities
{
    // Bảng lưu chữ ký thuật toán
    public class PaymentSignature : BaseEntity
    {
        public string? SignValue {  get; set; } // Lưu nội dung giá trị của chữ ký này
        public string? SignAlgo { get; set; } // Lưu thuật toán tạo ra chữ ký này
        public DateTimeOffset? SignDate { get; set; }
        public string? SignOwn {  get; set; } // Để chữ ký của bên nào(Bên tạo ra chữ ký)
        public int? PaymentId {  get; set; }
        public bool? IsValid { get; set; }  
    }
}
