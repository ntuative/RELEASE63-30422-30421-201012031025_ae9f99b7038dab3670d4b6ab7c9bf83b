package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_813:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1002:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2513:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_813);
         this.var_2513 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2513;
      }
   }
}
