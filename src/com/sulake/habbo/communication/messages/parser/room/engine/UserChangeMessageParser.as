package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_560:String;
      
      private var var_789:String;
      
      private var var_1515:String;
      
      private var var_2078:int;
      
      public function UserChangeMessageParser()
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
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function get sex() : String
      {
         return this.var_789;
      }
      
      public function get customInfo() : String
      {
         return this.var_1515;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2078;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_560 = "";
         this.var_789 = "";
         this.var_1515 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_560 = param1.readString();
         this.var_789 = param1.readString();
         this.var_1515 = param1.readString();
         this.var_2078 = param1.readInteger();
         if(this.var_789)
         {
            this.var_789 = this.var_789.toUpperCase();
         }
         return true;
      }
   }
}
