package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_246:String = "ROE_MOUSE_CLICK";
      
      public static const const_1770:String = "ROE_MOUSE_ENTER";
      
      public static const const_478:String = "ROE_MOUSE_MOVE";
      
      public static const const_1574:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1631:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_496:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1534:String = "";
      
      private var var_2351:Boolean;
      
      private var var_2355:Boolean;
      
      private var var_2350:Boolean;
      
      private var var_2354:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1534 = param2;
         this.var_2351 = param5;
         this.var_2355 = param6;
         this.var_2350 = param7;
         this.var_2354 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1534;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2351;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2355;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2350;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2354;
      }
   }
}
