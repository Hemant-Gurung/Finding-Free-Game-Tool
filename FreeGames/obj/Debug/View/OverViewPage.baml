   M S B A M L   `   `   `  ����D  @FreeGames, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:FreeGames.ViewModelFreeGames.ViewModel  5      E'clr-namespace:FreeGames.View.ConvertersFreeGames.View.Converters  5      %clr-namespace:FreeGames	FreeGames  5          FreeGames.OverViewPage   5      (VM!clr-namespace:FreeGames.ViewModel  5      5	Converter'clr-namespace:FreeGames.View.Converters  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:FreeGames     5        N� Title$  OverViewPage��5       � DataContext 5      (   "FreeGames.ViewModel.OverViewPageVM  5   
    � 	Resources 5      1   +FreeGames.View.Converters.TypeIconConverter   IconConverter��%   &	          5   
   6&   5      .��5      � 
���   � � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5   
   �� 
������ $��50(�6.   
���  ��$��	ExtraBold"�6M   $��LIST OF GAMES��6d   $��Center=�6y   �� 5    
   $��	10,10,0,0q�6   
���  ��$
��Left=�6�   
���   �$	��200��6�   $��60��6�    �� SelectedItem 6'   �� *selectedGenre+ �� FallbackValue$ GenreSelection����6l   �� *
GameGenres+6�   �� 5!   
   $��20(�6   $��40,20,10,10q�6"   $��Select Genre��67   $	��120��6K   $
��Left=�6W   �� 5"   
   $��	10,10,0,0q�6   
���  ��$��Right=�6�   
���   �$	��200��6�   $��60��6�    6'   �� *selectedPlatform+��6Q   �� *GamePlatForms+$ PlatformSelecion��6�   �� 5#   
   $��20(�6   $��
0,20,20,10q�6$   $�� Select Platform��68   $	��160��6P   $��Right=�6\   �� 5%   
   $��1��6   
������ 
���   �$��Bottom=�6�   $��Disabled=�6�   ��6    �� *GetGameList+ 6E   �� *SelectedGame+��5&      �� 5'      .R�5(      �  K� IsItemsHost . 6    5)      ��5+      �� 5-      .R�5.      �� $��	30,0,10,0q�6   
������ .+�50      �� $��Center=�6f   $	��Top=�6�   $	��300��6�   $	��500��6�   $��	50,60,0,0q�6�   ��6    �� *	thumbnail+ �� 	Converter# [  6�   �� 51      $
��Bold"�6<    K� Capitals$ AllSmallCaps=�6N   $��Normal$�6q   
������ $��80,0,0,0q�6�   
�������$	��Top=�6�   $��40(�6�   ��6$   �� *Title+6�   �� 55      $��80,5,0,0q�6%   	 �� Orientation$	 
Horizontal=�67   .+�56      �� $��GENRE:  ��6(   $
��Wrap=�68   $��20(�6L   
�������6[   �� 57      $��20(�6?   
�������$��Italic$�6a   ��6(   �� *genre+6a   58      �� 5;      $��80,5,0,0q�6%   $	 
Horizontal=�67   .+�5<      �� $��
Platform: ��6(   $
��Wrap=�6:   $��20(�6N   
�������6]   �� 5=      $
��Wrap=�6B   $��20(�6V   
�������$��Italic$�6y   ��6(   �� *
Platform+6y   5>      �� 5@      $��80,5,0,0q�6%   $	 
Horizontal=�67   .+�5A      �� $��Release Date: ��6(   $
��Wrap=�6>   $��20(�6R   
�������6a   �� 5B      $
��Wrap=�6F   $��20(�6Z   
�������$��Italic$�6}   ��6(   �� *release_date+6}   5C      5H      5I      5K      5L      5M      