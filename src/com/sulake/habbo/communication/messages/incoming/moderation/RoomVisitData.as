package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1732:Boolean;
      
      private var _roomId:int;
      
      private var var_841:String;
      
      private var var_2486:int;
      
      private var var_2487:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1732 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_841 = param1.readString();
         this.var_2486 = param1.readInteger();
         this.var_2487 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1732;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_841;
      }
      
      public function get enterHour() : int
      {
         return this.var_2486;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2487;
      }
   }
}
