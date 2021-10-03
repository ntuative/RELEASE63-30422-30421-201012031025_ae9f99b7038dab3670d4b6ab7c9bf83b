package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_881:int = 3;
       
      
      private var var_2574:int = -1;
      
      private var var_2572:int = -2;
      
      private var var_344:Vector3d = null;
      
      private var var_405:Vector3d = null;
      
      private var var_2578:Boolean = false;
      
      private var var_2571:Boolean = false;
      
      private var var_2573:Boolean = false;
      
      private var var_2580:Boolean = false;
      
      private var var_2577:int = 0;
      
      private var var_2579:int = 0;
      
      private var var_2575:int = 0;
      
      private var var_2576:int = 0;
      
      private var var_1397:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_405;
      }
      
      public function get targetId() : int
      {
         return this.var_2574;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2572;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2578;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2571;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2573;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2580;
      }
      
      public function get screenWd() : int
      {
         return this.var_2577;
      }
      
      public function get screenHt() : int
      {
         return this.var_2579;
      }
      
      public function get roomWd() : int
      {
         return this.var_2575;
      }
      
      public function get roomHt() : int
      {
         return this.var_2576;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2574 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2572 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2578 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2571 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2573 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2580 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2577 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2579 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2575 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2576 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_344 == null)
         {
            this.var_344 = new Vector3d();
         }
         if(this.var_344.x != param1.x || this.var_344.y != param1.y || this.var_344.z != param1.z)
         {
            this.var_344.assign(param1);
            this.var_1397 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_344 = null;
         this.var_405 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_405 != null)
         {
            return;
         }
         this.var_405 = new Vector3d();
         this.var_405.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_344 != null && this.var_405 != null)
         {
            ++this.var_1397;
            _loc4_ = Vector3d.dif(this.var_344,this.var_405);
            if(_loc4_.length <= param2)
            {
               this.var_405 = this.var_344;
               this.var_344 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_881 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1397 <= const_881)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_405 = Vector3d.sum(this.var_405,_loc4_);
            }
         }
      }
   }
}
