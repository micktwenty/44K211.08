using System.Web;
using System.Web.Mvc;

namespace Booking_Motorbike_44K21108
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
