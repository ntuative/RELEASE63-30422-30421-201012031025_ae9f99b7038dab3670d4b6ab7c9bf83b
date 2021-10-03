package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2448:Boolean;
      
      private var var_2449:int;
      
      private var var_1605:Array;
      
      private var var_678:Array;
      
      private var var_677:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2448;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2449;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1605 = [];
         this.var_678 = [];
         this.var_677 = [];
         this.var_2448 = param1.readBoolean();
         this.var_2449 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1605.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_678.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_677.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
