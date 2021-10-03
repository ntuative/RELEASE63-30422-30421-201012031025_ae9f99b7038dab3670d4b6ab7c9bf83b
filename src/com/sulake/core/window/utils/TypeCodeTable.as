package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_736;
         param1["bitmap"] = const_573;
         param1["border"] = const_748;
         param1["border_notify"] = const_1394;
         param1["button"] = const_418;
         param1["button_thick"] = const_727;
         param1["button_icon"] = const_1402;
         param1["button_group_left"] = const_752;
         param1["button_group_center"] = const_673;
         param1["button_group_right"] = const_685;
         param1["canvas"] = const_587;
         param1["checkbox"] = const_613;
         param1["closebutton"] = const_942;
         param1["container"] = const_348;
         param1["container_button"] = const_638;
         param1["display_object_wrapper"] = const_672;
         param1["dropmenu"] = const_457;
         param1["dropmenu_item"] = const_464;
         param1["frame"] = const_364;
         param1["frame_notify"] = const_1466;
         param1["header"] = const_754;
         param1["icon"] = const_998;
         param1["itemgrid"] = const_925;
         param1["itemgrid_horizontal"] = const_450;
         param1["itemgrid_vertical"] = const_797;
         param1["itemlist"] = const_1072;
         param1["itemlist_horizontal"] = const_351;
         param1["itemlist_vertical"] = const_355;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1396;
         param1["menu_item"] = const_1352;
         param1["submenu"] = const_1022;
         param1["minimizebox"] = const_1371;
         param1["notify"] = const_1360;
         param1["null"] = const_571;
         param1["password"] = const_807;
         param1["radiobutton"] = const_735;
         param1["region"] = const_682;
         param1["restorebox"] = const_1353;
         param1["scaler"] = const_617;
         param1["scaler_horizontal"] = const_1327;
         param1["scaler_vertical"] = const_1370;
         param1["scrollbar_horizontal"] = const_480;
         param1["scrollbar_vertical"] = const_782;
         param1["scrollbar_slider_button_up"] = const_899;
         param1["scrollbar_slider_button_down"] = const_1074;
         param1["scrollbar_slider_button_left"] = const_913;
         param1["scrollbar_slider_button_right"] = const_999;
         param1["scrollbar_slider_bar_horizontal"] = const_1050;
         param1["scrollbar_slider_bar_vertical"] = const_961;
         param1["scrollbar_slider_track_horizontal"] = const_910;
         param1["scrollbar_slider_track_vertical"] = const_967;
         param1["scrollable_itemlist"] = const_1418;
         param1["scrollable_itemlist_vertical"] = const_456;
         param1["scrollable_itemlist_horizontal"] = const_1025;
         param1["selector"] = const_697;
         param1["selector_list"] = const_695;
         param1["submenu"] = const_1022;
         param1["tab_button"] = const_585;
         param1["tab_container_button"] = const_905;
         param1["tab_context"] = const_370;
         param1["tab_content"] = const_1064;
         param1["tab_selector"] = const_686;
         param1["text"] = const_677;
         param1["input"] = const_649;
         param1["toolbar"] = const_1314;
         param1["tooltip"] = const_353;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
