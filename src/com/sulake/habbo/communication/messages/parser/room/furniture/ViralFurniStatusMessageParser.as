package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      public const const_1793:int = 0;
      
      public const const_1831:int = 1;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_349:int;
      
      private var var_1431:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1431;
      }
      
      public function get status() : int
      {
         return this.var_349;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_349 = param1.readInteger();
         this.var_1431 = param1.readString();
         return true;
      }
   }
}
