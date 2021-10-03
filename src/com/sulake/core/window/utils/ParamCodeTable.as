package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_176;
         param1["bound_to_parent_rect"] = const_93;
         param1["child_window"] = const_922;
         param1["embedded_controller"] = const_973;
         param1["resize_to_accommodate_children"] = const_63;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_743;
         param1["mouse_dragging_target"] = const_212;
         param1["mouse_dragging_trigger"] = const_320;
         param1["mouse_scaling_target"] = const_303;
         param1["mouse_scaling_trigger"] = const_406;
         param1["horizontal_mouse_scaling_trigger"] = const_236;
         param1["vertical_mouse_scaling_trigger"] = const_227;
         param1["observe_parent_input_events"] = const_1009;
         param1["optimize_region_to_layout_size"] = const_494;
         param1["parent_window"] = const_919;
         param1["relative_horizontal_scale_center"] = const_172;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_366;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1021;
         param1["relative_scale_fixed"] = const_558;
         param1["relative_scale_move"] = const_1040;
         param1["relative_scale_strech"] = const_928;
         param1["relative_vertical_scale_center"] = const_188;
         param1["relative_vertical_scale_fixed"] = const_116;
         param1["relative_vertical_scale_move"] = const_359;
         param1["relative_vertical_scale_strech"] = const_368;
         param1["on_resize_align_left"] = const_597;
         param1["on_resize_align_right"] = const_463;
         param1["on_resize_align_center"] = const_516;
         param1["on_resize_align_top"] = const_659;
         param1["on_resize_align_bottom"] = const_454;
         param1["on_resize_align_middle"] = const_417;
         param1["on_accommodate_align_left"] = const_1041;
         param1["on_accommodate_align_right"] = const_459;
         param1["on_accommodate_align_center"] = const_696;
         param1["on_accommodate_align_top"] = const_1081;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_577;
         param1["route_input_events_to_parent"] = const_453;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_948;
         param1["scalable_with_mouse"] = const_911;
         param1["reflect_horizontal_resize_to_parent"] = const_507;
         param1["reflect_vertical_resize_to_parent"] = const_433;
         param1["reflect_resize_to_parent"] = const_294;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
