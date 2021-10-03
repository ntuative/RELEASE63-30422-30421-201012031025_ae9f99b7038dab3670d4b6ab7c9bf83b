package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1577:int = 0;
      
      private var var_1578:int = 0;
      
      private var var_1421:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1577;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1578;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1421;
      }
      
      public function flush() : Boolean
      {
         this.var_1577 = 0;
         this.var_1578 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1577 = param1.readInteger();
         this.var_1578 = param1.readInteger();
         this.var_1421 = param1.readInteger();
         return true;
      }
   }
}
