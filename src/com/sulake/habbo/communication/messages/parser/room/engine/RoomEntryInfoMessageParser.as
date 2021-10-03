package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1562:Boolean;
      
      private var var_2170:int;
      
      private var var_387:Boolean;
      
      private var var_1009:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1562;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2170;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1009;
      }
      
      public function get owner() : Boolean
      {
         return this.var_387;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1009 != null)
         {
            this.var_1009.dispose();
            this.var_1009 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1562 = param1.readBoolean();
         if(this.var_1562)
         {
            this.var_2170 = param1.readInteger();
            this.var_387 = param1.readBoolean();
         }
         else
         {
            this.var_1009 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
