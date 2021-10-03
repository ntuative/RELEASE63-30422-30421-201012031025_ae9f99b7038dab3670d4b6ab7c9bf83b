package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1432:String;
      
      private var var_1785:int;
      
      private var var_2067:Boolean;
      
      private var var_2071:Boolean;
      
      private var var_2070:int;
      
      private var var_2069:int;
      
      private var var_2072:int;
      
      private var var_2066:int;
      
      private var var_2068:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1432 = param1.readString();
         this.var_1785 = param1.readInteger();
         this.var_2067 = param1.readBoolean();
         this.var_2071 = param1.readBoolean();
         this.var_2070 = param1.readInteger();
         this.var_2069 = param1.readInteger();
         this.var_2072 = param1.readInteger();
         this.var_2066 = param1.readInteger();
         this.var_2068 = param1.readInteger();
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
   }
}
