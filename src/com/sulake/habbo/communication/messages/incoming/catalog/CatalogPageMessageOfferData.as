package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1657:String;
      
      private var var_1073:int;
      
      private var var_1071:int;
      
      private var var_1421:int;
      
      private var var_1124:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1657 = param1.readString();
         this.var_1073 = param1.readInteger();
         this.var_1071 = param1.readInteger();
         this.var_1421 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1124 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1124.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1657;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1073;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1071;
      }
      
      public function get products() : Array
      {
         return this.var_1124;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1421;
      }
   }
}
