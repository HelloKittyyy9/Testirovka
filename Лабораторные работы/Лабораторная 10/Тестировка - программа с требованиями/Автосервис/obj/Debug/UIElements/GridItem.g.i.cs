﻿#pragma checksum "..\..\..\UIElements\GridItem.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "EA69438B341BD887D6F14B4C6009BC2E49F164A5BE0F9B69F4A90BCAE8629004"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Autoservice;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Autoservice {
    
    
    /// <summary>
    /// GridItem
    /// </summary>
    public partial class GridItem : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 13 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border Bg;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image ProductImage;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel ImageDotPanel;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ProductName;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ProductAttached;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock ProductPrice;
        
        #line default
        #line hidden
        
        
        #line 40 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock IsDeactivated;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem ProductHistory;
        
        #line default
        #line hidden
        
        
        #line 53 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem ProductEdit;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\UIElements\GridItem.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.MenuItem ProductDelete;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Autoservice;component/uielements/griditem.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\UIElements\GridItem.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.Bg = ((System.Windows.Controls.Border)(target));
            return;
            case 2:
            this.ProductImage = ((System.Windows.Controls.Image)(target));
            return;
            case 3:
            this.ImageDotPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 4:
            this.ProductName = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.ProductAttached = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.ProductPrice = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            this.IsDeactivated = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 8:
            this.ProductHistory = ((System.Windows.Controls.MenuItem)(target));
            
            #line 51 "..\..\..\UIElements\GridItem.xaml"
            this.ProductHistory.Click += new System.Windows.RoutedEventHandler(this.MenuItem_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.ProductEdit = ((System.Windows.Controls.MenuItem)(target));
            
            #line 53 "..\..\..\UIElements\GridItem.xaml"
            this.ProductEdit.Click += new System.Windows.RoutedEventHandler(this.MenuItem_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.ProductDelete = ((System.Windows.Controls.MenuItem)(target));
            
            #line 54 "..\..\..\UIElements\GridItem.xaml"
            this.ProductDelete.Click += new System.Windows.RoutedEventHandler(this.MenuItem_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

