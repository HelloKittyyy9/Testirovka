using System;


namespace Autoservice.Classes
{
    static class Constants
    {
        private static String imagePath = "pack://siteoforigin:,,,/";
        private static UriKind imageUriKind = UriKind.Absolute;

        public static UriKind ImageUriKind { get => imageUriKind; }
        public static string ImagePath { get => imagePath; }
    }
}
