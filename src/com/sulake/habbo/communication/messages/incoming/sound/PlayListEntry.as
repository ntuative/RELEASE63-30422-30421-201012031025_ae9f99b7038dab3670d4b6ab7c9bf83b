package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1918:int;
      
      private var var_2230:int;
      
      private var var_2228:String;
      
      private var var_2227:String;
      
      private var var_2229:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_1918 = param1;
         this.var_2230 = param2;
         this.var_2228 = param3;
         this.var_2227 = param4;
      }
      
      public function get id() : int
      {
         return this.var_1918;
      }
      
      public function get length() : int
      {
         return this.var_2230;
      }
      
      public function get name() : String
      {
         return this.var_2228;
      }
      
      public function get creator() : String
      {
         return this.var_2227;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2229;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2229 = param1;
      }
   }
}
