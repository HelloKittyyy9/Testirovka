   M S B A M L   `   `   `  ????F  BAutoservice, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:Autoservice.UIElementsAutoservice.UIElements  5      (    "Autoservice.UIElements.HistoryPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:Autoservice.UIElements     5        N? 
Background
  ????? N? Title$ HistoryPage??5      .??5      ?  ? RowDefinitions 5   
   ?? 5      $??35 ?6   ?? 5      $??* ?6   .+?5   
   ? $??5q?6    ? ColumnDefinitions 5      ?? 5      ?? 5      .+?5      ??  ?? Orientation$ 
Horizontal=?6   $??0??62   .+?5      ?? -   5        $??BtnBack??5   )   $??
Назад??6   $??65??6N   5      ?? 5      $!??История продаж??6   $??14(?6.   $??Center=?6<   $??Center=?6Y   $??2??6t   ?? 5      $ 
Horizontal=?6   $??2??62   $??Right=?6B   .+?5      ?? -   5        $??
ManufacBox??5      $	??150??6-   $??Center=?69   5      5       &   System.Windows.Controls.DataGrid  5!   
   -   5        $??	DgHistory??5!      $??1??6$      CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly . 6b   5"      5#      