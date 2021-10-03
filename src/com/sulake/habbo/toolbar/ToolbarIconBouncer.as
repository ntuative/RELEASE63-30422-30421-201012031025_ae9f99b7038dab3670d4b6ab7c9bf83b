package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2020:Number;
      
      private var var_2019:Number;
      
      private var var_784:Number;
      
      private var var_783:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2020 = param1;
         this.var_2019 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_784 = param1;
         this.var_783 = 0;
      }
      
      public function update() : void
      {
         this.var_784 += this.var_2019;
         this.var_783 += this.var_784;
         if(this.var_783 > 0)
         {
            this.var_783 = 0;
            this.var_784 = this.var_2020 * -1 * this.var_784;
         }
      }
      
      public function get location() : Number
      {
         return this.var_783;
      }
   }
}
