package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_832:int = 10;
      
      private static const const_546:int = 20;
      
      private static const const_1152:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_262:Array;
      
      private var var_709:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_262 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_709)
            {
               this.var_709 = true;
               this.var_262 = new Array();
               this.var_262.push(const_1152);
               this.var_262.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_832)
         {
            if(this.var_709)
            {
               this.var_709 = false;
               this.var_262 = new Array();
               this.var_262.push(const_832 + param1);
               this.var_262.push(const_546 + param1);
               this.var_262.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_262.length > 0)
            {
               super.setAnimation(this.var_262.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
