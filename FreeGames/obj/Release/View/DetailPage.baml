   M S B A M L   `   `   `  ���� D  @FreeGames, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:FreeGames.ViewModelFreeGames.ViewModel  %clr-namespace:FreeGames	FreeGames      FreeGames.DetailPage   (VM!clr-namespace:FreeGames.ViewModel  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:FreeGames       N� Title$  
DetailPage�� � DataContext &    FreeGames.ViewModel.DetailPageVM  .���  � RowDefinitions �� $
��Auto ��� $
��0.5* ��� $
��0.5* ��� $
��0.5* ��� $
��1.5* �.+�� 
���   � �� $	��10* ��� $	��10* ��� $	��10* ��� $	��10* � � ColumnDefinitions �� $	��10* ��� $	��10* ��� $	��10* �.+��� $��UniformToFill=�$��0��$��3��$��0��$��5�� J� Opacity$ 50Q����� *currentGame.thumbnail+�� $����https://sjunkins.files.wordpress.com/2012/04/the-best-top-desktop-hd-dark-black-wallpapers-dark-black-wallpaper-dark-background-dark-wallpaper-23.jpg ��$��Uniform=�$��0��$��3��$��0��$��5��$	 0.8Q� J� OpacityMask
 �**���� $��1��$��0��$��2��$
��Left=�
���  ��$��	30,90,0,0q�$
��Bold"�$��30(�$��Normal$����� *currentGame.os+�� $��1��$��0��$��1��$
��Left=�
���  ��$��
30,120,0,0q�$
��Bold"�$��30(�$��Normal$����� *currentGame.processor+�� $��1��$��0��$��2��$
��Left=�
���  ��$��	30,60,0,0q�$
��Bold"�$��30(�$��Normal$����� *currentGame.memory+�� $��1��$��0��$��2��$
��Left=�
���  ��$��	30,30,0,0q�$
��Bold"�$��30(�$��Normal$����� *currentGame.graphics+�� $��1��$��0��$��2��$
��Left=�
���  ��$��30,0,0,0q�$
��Bold"�$��30(�$��Normal$����� *currentGame.storage+�� $��0��$	��500��$��20,0,0,0q�$��1��$��Uniform=����� *currentGame.image+��  K� Capitals$ AllSmallCaps=�$��0��$��2��$��0��$	��Top=�
������ $��	20,20,0,0q�$
��Left=�
�������$
��Bold"�$��80(�$��Normal$����� *currentGame.Title+�� 
��� ���$��20,0,0,0q����� *currentGame.Title.Length+�� 
������ $��0��$��4��$��1��$��3��$��Hidden=�$	��970��$	��900��$��Medium&�$��0,10,0,0q�.���� ���#54933a$ AllSmallCaps=�$��30(�
������ $��WrapWithOverflow=� �� TextAlignment$ Center=�$��Verdana)����� *currentGame.description+