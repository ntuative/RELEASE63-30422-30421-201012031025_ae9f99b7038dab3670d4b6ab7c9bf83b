package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1505:int = 0;
      
      private var var_1506:int = 0;
      
      private var var_2327:int = 0;
      
      private var var_2326:Boolean = false;
      
      private var var_2044:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1505 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1506 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2327 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2326 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2044 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1505;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1506;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2327;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2326;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2044;
      }
   }
}
