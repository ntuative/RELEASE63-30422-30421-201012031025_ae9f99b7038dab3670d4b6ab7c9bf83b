package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1252:Boolean = false;
      
      private var var_1785:int;
      
      private var var_1605:Array;
      
      private var var_678:Array;
      
      private var var_677:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1252 = _loc2_.isWrappingEnabled;
         this.var_1785 = _loc2_.wrappingPrice;
         this.var_1605 = _loc2_.stuffTypes;
         this.var_678 = _loc2_.boxTypes;
         this.var_677 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1252;
      }
      
      public function get price() : int
      {
         return this.var_1785;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1605;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_678;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_677;
      }
   }
}
