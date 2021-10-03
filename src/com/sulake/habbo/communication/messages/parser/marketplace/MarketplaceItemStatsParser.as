package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2106:int;
      
      private var var_2107:int;
      
      private var var_2109:int;
      
      private var _dayOffsets:Array;
      
      private var var_1617:Array;
      
      private var var_1616:Array;
      
      private var var_2108:int;
      
      private var var_2105:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2106;
      }
      
      public function get offerCount() : int
      {
         return this.var_2107;
      }
      
      public function get historyLength() : int
      {
         return this.var_2109;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1617;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1616;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2108;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2105;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2106 = param1.readInteger();
         this.var_2107 = param1.readInteger();
         this.var_2109 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1617 = [];
         this.var_1616 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1617.push(param1.readInteger());
            this.var_1616.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2105 = param1.readInteger();
         this.var_2108 = param1.readInteger();
         return true;
      }
   }
}
