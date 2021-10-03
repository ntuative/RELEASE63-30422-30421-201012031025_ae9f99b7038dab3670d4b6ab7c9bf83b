package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1498:int;
      
      private var var_2274:String;
      
      private var var_1597:int;
      
      private var var_560:String;
      
      private var var_1378:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1498 = param1.readInteger();
         this.var_2274 = param1.readString();
         this.var_1597 = param1.readInteger();
         this.var_560 = param1.readString();
         this.var_1378 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1498;
      }
      
      public function get petName() : String
      {
         return this.var_2274;
      }
      
      public function get level() : int
      {
         return this.var_1597;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function get petType() : int
      {
         return this.var_1378;
      }
   }
}
