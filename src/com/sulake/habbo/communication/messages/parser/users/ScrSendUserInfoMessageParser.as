package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1570:int = 1;
      
      public static const const_1477:int = 2;
       
      
      private var var_776:String;
      
      private var var_2341:int;
      
      private var var_2336:int;
      
      private var var_2338:int;
      
      private var var_2335:int;
      
      private var var_2339:Boolean;
      
      private var var_2044:Boolean;
      
      private var var_2043:int;
      
      private var var_2046:int;
      
      private var var_2340:Boolean;
      
      private var var_2334:int;
      
      private var var_2337:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_776 = param1.readString();
         this.var_2341 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_2335 = param1.readInteger();
         this.var_2339 = param1.readBoolean();
         this.var_2044 = param1.readBoolean();
         this.var_2043 = param1.readInteger();
         this.var_2046 = param1.readInteger();
         this.var_2340 = param1.readBoolean();
         this.var_2334 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_776;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2341;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2336;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2338;
      }
      
      public function get responseType() : int
      {
         return this.var_2335;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2339;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2044;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2043;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2046;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2340;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2334;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2337;
      }
   }
}
