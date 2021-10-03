package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class DirectionData
   {
       
      
      private var var_111:Array;
      
      public function DirectionData(param1:int)
      {
         var _loc3_:* = null;
         this.var_111 = [];
         super();
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = new LayerData();
            this.var_111.push(_loc3_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         this.var_111 = null;
      }
      
      public function get layerCount() : int
      {
         return this.var_111.length;
      }
      
      private function getLayer(param1:int) : LayerData
      {
         if(param1 < 0 || param1 >= this.layerCount)
         {
            return null;
         }
         return this.var_111[param1];
      }
      
      public function getTag(param1:int) : String
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.tag;
         }
         return LayerData.const_645;
      }
      
      public function setTag(param1:int, param2:String) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.tag = param2;
         }
      }
      
      public function getInk(param1:int) : int
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.ink;
         }
         return LayerData.const_476;
      }
      
      public function setInk(param1:int, param2:int) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.ink = param2;
         }
      }
      
      public function getAlpha(param1:int) : int
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.alpha;
         }
         return LayerData.const_455;
      }
      
      public function setAlpha(param1:int, param2:int) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.alpha = param2;
         }
      }
      
      public function getIgnoreMouse(param1:int) : Boolean
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.ignoreMouse;
         }
         return LayerData.const_574;
      }
      
      public function setIgnoreMouse(param1:int, param2:Boolean) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.ignoreMouse = param2;
         }
      }
      
      public function getXOffset(param1:int) : int
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.xOffset;
         }
         return LayerData.const_413;
      }
      
      public function setXOffset(param1:int, param2:int) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.xOffset = param2;
         }
      }
      
      public function getYOffset(param1:int) : int
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.method_2;
         }
         return LayerData.const_470;
      }
      
      public function setYOffset(param1:int, param2:int) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.method_2 = param2;
         }
      }
      
      public function getZOffset(param1:int) : Number
      {
         var _loc2_:LayerData = this.getLayer(param1);
         if(_loc2_ != null)
         {
            return _loc2_.zOffset;
         }
         return LayerData.const_419;
      }
      
      public function setZOffset(param1:int, param2:Number) : void
      {
         var _loc3_:LayerData = this.getLayer(param1);
         if(_loc3_ != null)
         {
            _loc3_.zOffset = param2;
         }
      }
      
      public function copyValues(param1:DirectionData) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.layerCount != param1.layerCount)
         {
            return;
         }
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.layerCount)
         {
            _loc2_ = this.getLayer(_loc4_);
            _loc3_ = param1.getLayer(_loc4_);
            if(_loc2_)
            {
               _loc2_.copyValues(_loc3_);
            }
            _loc4_++;
         }
      }
   }
}
