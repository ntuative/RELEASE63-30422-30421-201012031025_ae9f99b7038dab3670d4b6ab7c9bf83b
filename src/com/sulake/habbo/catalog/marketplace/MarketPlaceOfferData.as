package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2120:int;
      
      private var var_1873:String;
      
      private var var_1785:int;
      
      private var var_2106:int;
      
      private var var_2502:int;
      
      private var var_349:int;
      
      private var var_2121:int = -1;
      
      private var var_1791:int;
      
      private var var_39:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2120 = param3;
         this.var_1873 = param4;
         this.var_1785 = param5;
         this.var_349 = param6;
         this.var_2106 = param7;
         this.var_1791 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_39)
         {
            this.var_39.dispose();
            this.var_39 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2120;
      }
      
      public function get stuffData() : String
      {
         return this.var_1873;
      }
      
      public function get price() : int
      {
         return this.var_1785;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2106;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_39 != null)
         {
            this.var_39.dispose();
         }
         this.var_39 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2502 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2502;
      }
      
      public function get status() : int
      {
         return this.var_349;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2121;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2121 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1785 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1791;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1791 = param1;
      }
   }
}
