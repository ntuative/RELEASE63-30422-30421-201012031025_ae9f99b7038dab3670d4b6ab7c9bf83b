package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1252:Boolean;
      
      private var var_1960:int;
      
      private var var_1620:int;
      
      private var var_1619:int;
      
      private var var_1956:int;
      
      private var var_1958:int;
      
      private var var_1959:int;
      
      private var var_1957:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1252;
      }
      
      public function get commission() : int
      {
         return this.var_1960;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1620;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1619;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_1958;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_1956;
      }
      
      public function get expirationHours() : int
      {
         return this.var_1959;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_1957;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1252 = param1.readBoolean();
         this.var_1960 = param1.readInteger();
         this.var_1620 = param1.readInteger();
         this.var_1619 = param1.readInteger();
         this.var_1958 = param1.readInteger();
         this.var_1956 = param1.readInteger();
         this.var_1959 = param1.readInteger();
         this.var_1957 = param1.readInteger();
         return true;
      }
   }
}
