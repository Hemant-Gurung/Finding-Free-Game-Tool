using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace FreeGames.View.Converters
{
    public class TypeIconConverter:IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {

            // string ty = value.GetType().ToString();
            string type = value.ToString();

            if (DesignerProperties.GetIsInDesignMode(new System.Windows.DependencyObject()))
            {
               // return new BitmapImage(new Uri("https://img.pngio.com/pokeball-clipart-logo-pokemon-pokemon-ball-logo-png - pokeball - icon - png - 920_963.png "));
            }

            return new BitmapImage
                (new Uri($"{type}", UriKind.Absolute));

        }

        public object ConvertBack(object value, Type targetType, object paramaetr, CultureInfo culture) { return null; }

    }
}
