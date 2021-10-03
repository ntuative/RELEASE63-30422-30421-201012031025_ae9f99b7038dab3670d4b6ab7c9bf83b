package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_832:int = 20;
      
      private static const const_546:int = 10;
      
      private static const const_1152:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_262:Array;
      
      private var var_709:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_262 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_546)
         {
            if(this.var_709)
            {
               this.var_709 = false;
               this.var_262 = new Array();
               if(_direction == 2)
               {
                  this.var_262.push(const_832 + 5 - param1);
                  this.var_262.push(const_546 + 5 - param1);
               }
               else
               {
                  this.var_262.push(const_832 + param1);
                  this.var_262.push(const_546 + param1);
               }
               this.var_262.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
