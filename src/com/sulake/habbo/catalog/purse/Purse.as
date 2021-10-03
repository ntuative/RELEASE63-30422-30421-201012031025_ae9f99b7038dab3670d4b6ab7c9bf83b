package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_467:int = 0;
       
      
      private var var_2045:int = 0;
      
      private var var_1213:Dictionary;
      
      private var var_1505:int = 0;
      
      private var var_1506:int = 0;
      
      private var var_2044:Boolean = false;
      
      private var var_2043:int = 0;
      
      private var var_2046:int = 0;
      
      public function Purse()
      {
         this.var_1213 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2045;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2045 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1505;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1505 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1506;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1506 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1505 > 0 || this.var_1506 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2044;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2044 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2043;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2043 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2046;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2046 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1213;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1213 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1213[param1];
      }
   }
}
