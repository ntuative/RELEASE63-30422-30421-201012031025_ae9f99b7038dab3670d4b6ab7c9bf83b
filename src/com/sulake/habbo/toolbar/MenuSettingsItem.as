package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2238:String;
      
      private var var_2421:Array;
      
      private var var_2419:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2238 = param1;
         this.var_2421 = param2;
         this.var_2419 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2238;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2421;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2419;
      }
   }
}
