package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2120:int;
      
      private var var_1873:String;
      
      private var var_1785:int;
      
      private var var_349:int;
      
      private var var_2121:int = -1;
      
      private var var_2106:int;
      
      private var var_1791:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2120 = param3;
         this.var_1873 = param4;
         this.var_1785 = param5;
         this.var_349 = param6;
         this.var_2121 = param7;
         this.var_2106 = param8;
         this.var_1791 = param9;
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
      
      public function get status() : int
      {
         return this.var_349;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2121;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2106;
      }
      
      public function get offerCount() : int
      {
         return this.var_1791;
      }
   }
}
