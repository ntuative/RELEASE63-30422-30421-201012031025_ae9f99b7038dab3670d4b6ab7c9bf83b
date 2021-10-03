package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1190:int = 2;
      
      private static const const_1191:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_262:Array;
      
      private var var_1051:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_262 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1190)
         {
            this.var_262 = new Array();
            this.var_262.push(const_1191);
            this.var_1051 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1051 > 0)
         {
            --this.var_1051;
         }
         if(this.var_1051 == 0)
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
