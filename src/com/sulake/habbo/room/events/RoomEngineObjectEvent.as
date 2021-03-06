package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_653:String = "REOE_OBJECT_SELECTED";
      
      public static const const_537:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_306:String = "REOB_OBJECT_ADDED";
      
      public static const const_808:String = "REOE_OBJECT_REMOVED";
      
      public static const const_247:String = "REOB_OBJECT_PLACED";
      
      public static const const_578:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_127:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const const_122:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_STICKIE:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_119:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_133:String = "REOE_WIDGET_REQUEST_TROPHY";
      
      public static const const_129:String = "REOE_WIDGET_REQUEST_TEASER";
      
      public static const const_123:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_128:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_98:String = "REOR_REMOVE_DIMMER";
      
      public static const const_124:String = "REOR_REQUEST_CLOTHING_CHANGE";
      
      public static const const_412:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_449:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_407:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_530:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
       
      
      private var var_294:int;
      
      private var _category:int;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         this.var_294 = param4;
         this._category = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_294;
      }
      
      public function get category() : int
      {
         return this._category;
      }
   }
}
