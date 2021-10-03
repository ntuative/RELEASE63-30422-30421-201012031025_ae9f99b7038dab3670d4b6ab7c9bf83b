package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomThumbnailUpdateResultMessageParser implements IMessageParser
   {
       
      
      private var var_322:int;
      
      private var var_1466:int;
      
      public function RoomThumbnailUpdateResultMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_322 = param1.readInteger();
         this.var_1466 = param1.readInteger();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_322;
      }
      
      public function get resultCode() : int
      {
         return this.var_1466;
      }
   }
}
