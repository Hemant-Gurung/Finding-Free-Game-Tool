   M S B A M L   `   `   `  ����D  @FreeGames, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:FreeGames.ViewModelFreeGames.ViewModel  5      %clr-namespace:FreeGames	FreeGames  5          FreeGames.DetailPage   5      (VM!clr-namespace:FreeGames.ViewModel  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:FreeGames     5        N� Title$  
DetailPage��5
       � DataContext 5      &    FreeGames.ViewModel.DetailPageVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��0.5* �6   �� 5      $
��0.5* �6   �� 5      $
��0.5* �6   �� 5      $
��1.5* �6   .+�5   
   � 
���   � 5      �� 5      $	��10* �6    �� 5      $	��10* �6    �� 5      $	��10* �6    �� 5       $	��10* �6     � ColumnDefinitions 5#      �� 5$      $	��10* �6#   �� 5%      $	��10* �6#   �� 5&      $	��10* �6#   .+�5+      �� $��UniformToFill=�6=   $��0��5,      $��3��6   $��0��6*   $��5��6:    J� Opacity$ 50Q�6N   ��5+      �� *currentGame.thumbnail+5,   N   �� 5.      $����https://sjunkins.files.wordpress.com/2012/04/the-best-top-desktop-hd-dark-black-wallpapers-dark-black-wallpaper-dark-background-dark-wallpaper-23.jpg ��6   $��Uniform=�5/      $��0��6   $��3��6"   $��0��63   $��5��6C   $	 0.8Q�6W    J� OpacityMask
 �**��6e   �� 51      $��1��6   $��0��6&   $��2��66   $
��Left=�6J   
���  ��$��	30,90,0,0q�6v   $
��Bold"�6�   $��30(�6�   $��Normal$�6�   ��6�   �� *currentGame.os+�� 52      $��1��6   $��0��6&   $��1��66   $
��Left=�6J   
���  ��$��
30,120,0,0q�6w   $
��Bold"�6�   $��30(�6�   $��Normal$�6�   ��6�   �� *currentGame.processor+�� 53      $��1��6   $��0��6&   $��2��66   $
��Left=�6J   
���  ��$��	30,60,0,0q�6w   $
��Bold"�6�   $��30(�6�   $��Normal$�6�   ��6�   �� *currentGame.memory+�� 54      $��1��6   $��0��6&   $��2��66   $
��Left=�6J   
���  ��$��	30,30,0,0q�6v   $
��Bold"�6�   $��30(�6�   $��Normal$�6�   ��6�   �� *currentGame.graphics+�� 55      $��1��6   $��0��6&   $��2��66   $
��Left=�6J   
���  ��$��30,0,0,0q�6v   $
��Bold"�6�   $��30(�6�   $��Normal$�6�   ��6�   �� *currentGame.storage+�� 59      $��0��6   $	��500��6$   $��20,0,0,0q�61   $��1��6C   $��Uniform=�6v   ��6Q   �� *currentGame.image+6v   �� 5;       K� Capitals$ AllSmallCaps=�6   $��0��6;   $��2��6H   $��0��6\   $	��Top=�6l   
������ $��	20,20,0,0q�6�   $
��Left=�6�   
�������$
��Bold"�6�   $��80(�6�   $��Normal$�6�   ��6  �� *currentGame.Title+�� 5<      
��� ���$��20,0,0,0q�6&   ��68   �� *currentGame.Title.Length+�� 5?      
������ $��0��64   $��4��6A   $��1��6S   $��3��6c   $��Hidden=�6w   $	��970��6�   $	��900��6�   $��Medium&�6�   $��0,10,0,0q�6�   .��5@      �� ���#54933a$ AllSmallCaps=�62   $��30(�6V   
������ $��WrapWithOverflow=�6�    �� TextAlignment$ Center=�6�   $��Verdana)�6�   ��6}   �� *currentGame.description+6�   5A      5G      5I      5J      