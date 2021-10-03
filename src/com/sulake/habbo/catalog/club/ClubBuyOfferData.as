package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1432:String;
      
      private var var_1785:int;
      
      private var var_2067:Boolean;
      
      private var var_2071:Boolean;
      
      private var var_2070:int;
      
      private var var_2069:int;
      
      private var var_358:ICatalogPage;
      
      private var var_2072:int;
      
      private var var_2066:int;
      
      private var var_2068:int;
      
      private var var_2490:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1432 = param2;
         this.var_1785 = param3;
         this.var_2067 = param4;
         this.var_2071 = param5;
         this.var_2070 = param6;
         this.var_2069 = param7;
         this.var_2072 = param8;
         this.var_2066 = param9;
         this.var_2068 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1432;
      }
      
      public function get price() : int
      {
         return this.var_1785;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2067;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2071;
      }
      
      public function get periods() : int
      {
         return this.var_2070;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2069;
      }
      
      public function get year() : int
      {
         return this.var_2072;
      }
      
      public function get month() : int
      {
         return this.var_2066;
      }
      
      public function get day() : int
      {
         return this.var_2068;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_467;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1785;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_358;
      }
      
      public function get priceType() : String
      {
         return Offer.const_512;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1432;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_358 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2490;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2490 = param1;
      }
   }
}
