package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_776:String = "";
      
      private var var_960:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_960 = "";
         this.var_776 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_960 = param1.readString();
         this.var_776 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_776;
      }
      
      public function get productDescription() : String
      {
         return this.var_960;
      }
   }
}
