package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_211:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1920:int = 0;
      
      private var var_1922:int = 0;
      
      private var var_1923:int = 0;
      
      private var var_1921:Boolean = false;
      
      private var var_1924:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_211,param6,param7);
         this.var_1920 = param1;
         this.var_1922 = param2;
         this.var_1923 = param3;
         this.var_1921 = param4;
         this.var_1924 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_1920;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_1922;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_1923;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_1921;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1924;
      }
   }
}
