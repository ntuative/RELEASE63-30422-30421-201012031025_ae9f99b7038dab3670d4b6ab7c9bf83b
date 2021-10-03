package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_341:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_447:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1092:int;
      
      private var var_1929:Boolean;
      
      private var var_395:Boolean;
      
      private var var_1442:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1092 = param2;
         this.var_1929 = param3;
         this.var_395 = param4;
         this.var_1442 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1092;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_1929;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_395;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1442;
      }
   }
}
