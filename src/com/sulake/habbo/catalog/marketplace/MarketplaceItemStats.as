package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2106:int;
      
      private var var_2107:int;
      
      private var var_2109:int;
      
      private var _dayOffsets:Array;
      
      private var var_1617:Array;
      
      private var var_1616:Array;
      
      private var var_2108:int;
      
      private var var_2105:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2106 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2107 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2109 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1617 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1616 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2108 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2105 = param1;
      }
   }
}
