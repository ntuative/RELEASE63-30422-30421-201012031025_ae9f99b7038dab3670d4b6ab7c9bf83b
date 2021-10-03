package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_997:String;
      
      private var var_1176:Array;
      
      private var var_1059:Array;
      
      private var var_1438:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_997;
      }
      
      public function get choices() : Array
      {
         return this.var_1176.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1059.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1438;
      }
      
      public function flush() : Boolean
      {
         this.var_997 = "";
         this.var_1176 = [];
         this.var_1059 = [];
         this.var_1438 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_997 = param1.readString();
         this.var_1176 = [];
         this.var_1059 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1176.push(param1.readString());
            this.var_1059.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1438 = param1.readInteger();
         return true;
      }
   }
}
