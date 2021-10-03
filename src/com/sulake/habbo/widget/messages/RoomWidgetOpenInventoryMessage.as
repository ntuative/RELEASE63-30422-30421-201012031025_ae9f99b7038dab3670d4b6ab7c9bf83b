package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_579:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_897:String = "inventory_effects";
      
      public static const const_889:String = "inventory_badges";
      
      public static const const_1259:String = "inventory_clothes";
      
      public static const const_1412:String = "inventory_furniture";
       
      
      private var var_2148:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_579);
         this.var_2148 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2148;
      }
   }
}
