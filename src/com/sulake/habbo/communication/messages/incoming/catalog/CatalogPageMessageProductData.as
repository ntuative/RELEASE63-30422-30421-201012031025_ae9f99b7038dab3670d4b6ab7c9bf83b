package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_79:String = "i";
      
      public static const const_83:String = "s";
      
      public static const const_207:String = "e";
       
      
      private var var_1726:String;
      
      private var var_2054:int;
      
      private var var_1341:String;
      
      private var var_1342:int;
      
      private var var_1727:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1726 = param1.readString();
         this.var_2054 = param1.readInteger();
         this.var_1341 = param1.readString();
         this.var_1342 = param1.readInteger();
         this.var_1727 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1726;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2054;
      }
      
      public function get extraParam() : String
      {
         return this.var_1341;
      }
      
      public function get productCount() : int
      {
         return this.var_1342;
      }
      
      public function get expiration() : int
      {
         return this.var_1727;
      }
   }
}
