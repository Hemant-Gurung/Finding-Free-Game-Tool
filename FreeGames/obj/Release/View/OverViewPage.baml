   M S B A M L   `   `   `  ���� D  @FreeGames, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:FreeGames.ViewModelFreeGames.ViewModel  E'clr-namespace:FreeGames.View.ConvertersFreeGames.View.Converters  %clr-namespace:FreeGames	FreeGames      FreeGames.OverViewPage   (VM!clr-namespace:FreeGames.ViewModel  5	Converter'clr-namespace:FreeGames.View.Converters  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:FreeGames       N� Title$  OverViewPage�� � DataContext (   "FreeGames.ViewModel.OverViewPageVM   � 	Resources 1   +FreeGames.View.Converters.TypeIconConverter   IconConverter��%   &	          .��� 
���   � � RowDefinitions �� $
��auto ��� .+��� 
������ $��50(�
���  ��$��	ExtraBold"�$��LIST OF GAMES��$��Center=��� $��	10,10,0,0q�
���  ��$
��Left=�
���   �$	��200��$��60�� �� SelectedItem �� *selectedGenre+ �� FallbackValue$ GenreSelection������ *
GameGenres+�� $��20(�$��40,20,10,10q�$��Select Genre��$	��120��$
��Left=��� $��	10,10,0,0q�
���  ��$��Right=�
���   �$	��200��$��60�� �� *selectedPlatform+���� *GamePlatForms+$ PlatformSelecion���� $��20(�$��
0,20,20,10q�$�� Select Platform��$	��160��$��Right=��� $��1��
������ 
���   �$��Bottom=�$��Disabled=����� *GetGameList+ �� *SelectedGame+���� .R��  K� IsItemsHost . ���� .R��� $��	30,0,10,0q�
������ .+��� $��Center=�$	��Top=�$	��300��$	��500��$��	50,60,0,0q����� *	thumbnail+ �� 	Converter# [  �� $
��Bold"� K� Capitals$ AllSmallCaps=�$��Normal$�
������ $��80,0,0,0q�
�������$	��Top=�$��40(����� *Title+�� $��80,5,0,0q�	 �� Orientation$	 
Horizontal=�.+��� $��GENRE:  ��$
��Wrap=�$��20(�
��������� $��20(�
�������$��Italic$����� *genre+�� $��80,5,0,0q�$	 
Horizontal=�.+��� $��
Platform: ��$
��Wrap=�$��20(�
��������� $
��Wrap=�$��20(�
�������$��Italic$����� *
Platform+�� $��80,5,0,0q�$	 
Horizontal=�.+��� $��Release Date: ��$
��Wrap=�$��20(�
��������� $
��Wrap=�$��20(�
�������$��Italic$����� *release_date+