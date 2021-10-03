package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_414:String = "RWTDUE_TEASER_DATA";
      
      public static const const_1239:String = "RWTDUE_GIFT_DATA";
       
      
      private var _data:String;
      
      private var var_349:int;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_349;
      }
      
      public function set status(param1:int) : void
      {
         this.var_349 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
   }
}
