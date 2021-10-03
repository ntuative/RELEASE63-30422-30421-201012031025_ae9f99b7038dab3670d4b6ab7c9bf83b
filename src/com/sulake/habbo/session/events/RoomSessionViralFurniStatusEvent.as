package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_713:String = "RSVFS_STATUS";
       
      
      private var var_349:int;
      
      private var var_1431:String;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:int, param3:String, param4:IRoomSession, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param4,param5,param6);
         this.var_349 = param2;
         this.var_1431 = param3;
      }
      
      public function get status() : int
      {
         return this.var_349;
      }
      
      public function get shareId() : String
      {
         return this.var_1431;
      }
   }
}
