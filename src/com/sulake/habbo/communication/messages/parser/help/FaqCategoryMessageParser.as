package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class FaqCategoryMessageParser implements IMessageParser
   {
       
      
      private var var_1282:int;
      
      private var var_1444:String;
      
      private var _data:Map;
      
      public function FaqCategoryMessageParser()
      {
         super();
      }
      
      public function get categoryId() : int
      {
         return this.var_1282;
      }
      
      public function get description() : String
      {
         return this.var_1444;
      }
      
      public function get data() : Map
      {
         return this._data;
      }
      
      public function flush() : Boolean
      {
         if(this._data != null)
         {
            this._data.dispose();
         }
         this._data = null;
         this.var_1282 = -1;
         this.var_1444 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         this._data = new Map();
         this.var_1282 = param1.readInteger();
         this.var_1444 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = param1.readInteger();
            _loc4_ = param1.readString();
            this._data.add(_loc3_,_loc4_);
            _loc5_++;
         }
         return true;
      }
   }
}