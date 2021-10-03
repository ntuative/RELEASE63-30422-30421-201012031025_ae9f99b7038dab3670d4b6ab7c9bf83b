package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_418:int = -2.147483648E9;
      
      private var var_421:int = 2.147483647E9;
      
      private var var_419:int = -2.147483648E9;
      
      private var var_420:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_418;
      }
      
      public function get maxWidth() : int
      {
         return this.var_421;
      }
      
      public function get minHeight() : int
      {
         return this.var_419;
      }
      
      public function get maxHeight() : int
      {
         return this.var_420;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_418 = param1;
         if(this.var_418 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_418)
         {
            this._target.width = this.var_418;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_421 = param1;
         if(this.var_421 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_421)
         {
            this._target.width = this.var_421;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_419 = param1;
         if(this.var_419 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_419)
         {
            this._target.height = this.var_419;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_420 = param1;
         if(this.var_420 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_420)
         {
            this._target.height = this.var_420;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_418 == int.MIN_VALUE && this.var_421 == int.MAX_VALUE && this.var_419 == int.MIN_VALUE && this.var_420 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_418 = int.MIN_VALUE;
         this.var_421 = int.MAX_VALUE;
         this.var_419 = int.MIN_VALUE;
         this.var_420 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_418 = this.var_418;
         _loc2_.var_421 = this.var_421;
         _loc2_.var_419 = this.var_419;
         _loc2_.var_420 = this.var_420;
         return _loc2_;
      }
   }
}
