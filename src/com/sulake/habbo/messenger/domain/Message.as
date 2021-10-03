package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_788:int = 1;
      
      public static const const_761:int = 2;
      
      public static const const_674:int = 3;
      
      public static const const_979:int = 4;
      
      public static const const_729:int = 5;
      
      public static const const_983:int = 6;
       
      
      private var _type:int;
      
      private var var_1080:int;
      
      private var var_1961:String;
      
      private var var_2451:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1080 = param2;
         this.var_1961 = param3;
         this.var_2451 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1961;
      }
      
      public function get time() : String
      {
         return this.var_2451;
      }
      
      public function get senderId() : int
      {
         return this.var_1080;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
