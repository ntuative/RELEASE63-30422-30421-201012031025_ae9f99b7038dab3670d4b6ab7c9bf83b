package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.room.object.visualization.furniture.data.ColorData;
   import com.sulake.habbo.room.object.visualization.furniture.data.LayerData;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class FurnitureVisualization extends RoomObjectSpriteVisualization
   {
      
      protected static const const_1518:Number = Math.sqrt(0.5);
       
      
      protected var _direction:int;
      
      protected var var_2601:Number = NaN;
      
      protected var var_2602:int = -1;
      
      protected var _alphaMultiplier:Number = 1.0;
      
      protected var var_1169:String = null;
      
      protected var _data:FurnitureVisualizationData = null;
      
      protected var _type:String = "";
      
      private var var_874:Array;
      
      private var var_875:Array;
      
      private var var_2478:Number = 0.0;
      
      private var var_2479:int = -1;
      
      private var var_727:Array;
      
      private var var_722:Array;
      
      private var var_725:Array;
      
      private var var_726:Array;
      
      private var var_728:Array;
      
      private var var_723:Array;
      
      private var var_724:Array;
      
      private var var_729:Array;
      
      private var var_1777:Boolean = true;
      
      private var var_1744:int = 0;
      
      public function FurnitureVisualization()
      {
         this.var_874 = [];
         this.var_875 = [];
         this.var_727 = [];
         this.var_722 = [];
         this.var_725 = [];
         this.var_726 = [];
         this.var_728 = [];
         this.var_723 = [];
         this.var_724 = [];
         this.var_729 = [];
         super();
         this.reset();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this._data = null;
         this.var_874 = null;
         this.var_875 = null;
         this.var_727 = null;
         this.var_722 = null;
         this.var_725 = null;
         this.var_726 = null;
         this.var_728 = null;
         this.var_723 = null;
         this.var_724 = null;
         this.var_729 = null;
      }
      
      override protected function reset() : void
      {
         super.reset();
         this._direction = -1;
         this._data = null;
         this.var_874 = [];
         this.var_875 = [];
         this.var_727 = [];
         this.var_722 = [];
         this.var_725 = [];
         this.var_726 = [];
         this.var_728 = [];
         this.var_723 = [];
         this.var_724 = [];
         this.var_729 = [];
         this.createSprites(0);
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.reset();
         if(param1 == null || !(param1 is FurnitureVisualizationData))
         {
            return false;
         }
         this._data = param1 as FurnitureVisualizationData;
         this._type = this._data.getType();
         return true;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc4_:Boolean = false;
         var _loc5_:Number = param1.scale;
         if(this.updateObject(_loc5_,param1.direction.x))
         {
            _loc4_ = true;
         }
         if(this.updateModel(_loc5_))
         {
            _loc4_ = true;
         }
         var _loc6_:Array = this.updateAnimation(_loc5_);
         if(_loc4_ || _loc6_ != null && _loc6_.length > 0)
         {
            this.updateSprites(_loc5_,_loc4_,_loc6_);
            var_254 = _loc5_;
            increaseUpdateId();
         }
      }
      
      protected function updateSprites(param1:int, param2:Boolean, param3:Array) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.var_1744 != spriteCount)
         {
            createSprites(this.var_1744);
         }
         var _loc4_:Boolean = false;
         if(this.var_1169 != null)
         {
            _loc4_ = true;
         }
         if(param2)
         {
            _loc5_ = spriteCount - 1;
            while(_loc5_ >= 0)
            {
               this.updateSprite(_loc5_,param1,_loc4_);
               _loc5_--;
            }
         }
         else
         {
            for each(_loc6_ in param3)
            {
               this.updateSprite(_loc6_,param1,_loc4_);
            }
         }
         this.var_1777 = false;
      }
      
      private function updateSprite(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         var _loc4_:String = this.getSpriteAssetName(param1,param2);
         var _loc5_:IRoomObjectSprite = getSprite(param1);
         if(_loc5_ != null)
         {
            _loc6_ = null;
            if(assetCollection != null)
            {
               _loc6_ = assetCollection.getAsset(_loc4_);
            }
            if(_loc6_ != null && _loc6_.asset != null)
            {
               _loc5_.visible = true;
               _loc5_.asset = _loc6_.asset.content as BitmapData;
               _loc5_.flipH = _loc6_.flipH;
               _loc5_.flipV = _loc6_.flipV;
               _loc7_ = 0;
               if(param1 < spriteCount - 1)
               {
                  _loc5_.tag = this.getSpriteTag(param1,this._direction,param2);
                  _loc5_.alpha = this.getSpriteAlpha(param1,this._direction,param2);
                  _loc5_.color = this.getSpriteColor(param1,this.var_2602,param2);
                  _loc5_.offsetX = _loc6_.offsetX + this.getSpriteXOffset(param1,this._direction,param2);
                  _loc5_.offsetY = _loc6_.offsetY + this.getSpriteYOffset(param1,this._direction,param2);
                  _loc5_.capturesMouse = this.getSpriteMouseCapture(param1,this._direction,param2);
                  _loc5_.blendMode = this.getBlendMode(this.getSpriteInk(param1,this._direction,param2));
                  _loc7_ = Number(this.getSpriteZOffset(param1,this._direction,param2));
                  _loc7_ -= param1 * 0.001;
               }
               else
               {
                  _loc5_.offsetX = _loc6_.offsetX;
                  _loc5_.offsetY = _loc6_.offsetY;
                  _loc8_ = 48;
                  _loc8_ *= this._alphaMultiplier;
                  _loc5_.alpha = _loc8_;
                  _loc5_.capturesMouse = false;
                  _loc7_ = 1;
               }
               _loc7_ *= const_1518;
               _loc5_.relativeDepth = _loc7_;
               _loc5_.assetName = _loc4_;
               _loc5_.clickHandling = param3;
            }
            else
            {
               _loc5_.asset = null;
               _loc5_.assetName = "";
               _loc5_.tag = "";
               _loc5_.flipH = false;
               _loc5_.flipV = false;
               _loc5_.offsetX = 0;
               _loc5_.offsetY = 0;
               _loc5_.relativeDepth = 0;
               _loc5_.clickHandling = false;
            }
         }
      }
      
      protected function getBlendMode(param1:int) : String
      {
         var _loc2_:String = "null";
         switch(param1)
         {
            case LayerData.const_1027:
               _loc2_ = "null";
               break;
            case LayerData.INK_DARKEN:
               _loc2_ = "null";
               break;
            case LayerData.const_977:
               _loc2_ = "null";
         }
         return _loc2_;
      }
      
      protected function updateObject(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return false;
         }
         if(var_413 != _loc3_.getUpdateID() || param1 != var_254 || param2 != this.var_2601)
         {
            _loc4_ = _loc3_.getDirection().x - (param2 + 135);
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            if(this._data != null)
            {
               _loc5_ = this._data.getDirectionValue(_loc4_,param1);
               this._direction = _loc5_;
            }
            var_413 = _loc3_.getUpdateID();
            this.var_2601 = param2;
            this.updateAssetAnSpriteCache(this._direction,param1);
            return true;
         }
         return false;
      }
      
      protected function updateModel(param1:Number) : Boolean
      {
         var _loc4_:* = NaN;
         var _loc2_:IRoomObject = object;
         if(_loc2_ == null)
         {
            return false;
         }
         var _loc3_:IRoomObjectModel = _loc2_.getModel();
         if(_loc3_ == null)
         {
            return false;
         }
         if(var_216 != _loc3_.getUpdateID())
         {
            this.var_2602 = _loc3_.getNumber(RoomObjectVariableEnum.const_213);
            _loc4_ = Number(_loc3_.getNumber(RoomObjectVariableEnum.const_275));
            if(isNaN(_loc4_))
            {
               _loc4_ = 1;
            }
            if(_loc4_ != this._alphaMultiplier)
            {
               this._alphaMultiplier = _loc4_;
               this.var_1777 = true;
            }
            this.var_1169 = _loc3_.getString(RoomObjectVariableEnum.const_321);
            if(this.var_1169 == null || this.var_1169.indexOf("http") != 0)
            {
               this.var_1169 = null;
            }
            var_216 = _loc3_.getUpdateID();
            return true;
         }
         return false;
      }
      
      protected function updateAnimation(param1:Number) : Array
      {
         return null;
      }
      
      private function updateAssetAnSpriteCache(param1:int, param2:Number) : void
      {
         if(this.var_2479 != param1 || this.var_2478 != param2)
         {
            this.var_874 = [];
            this.var_875 = [];
            this.var_727 = [];
            this.var_722 = [];
            this.var_725 = [];
            this.var_726 = [];
            this.var_728 = [];
            this.var_723 = [];
            this.var_724 = [];
            this.var_729 = [];
            this.var_2479 = param1;
            this.var_2478 = param2;
            this.var_1744 = this._data.getLayerCount(param2) + 1;
         }
      }
      
      protected function getFrameNumber(param1:int, param2:int) : int
      {
         return 0;
      }
      
      protected function getSpriteAssetName(param1:int, param2:Number) : String
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         if(this._data == null || param1 >= FurnitureVisualizationData.const_1045.length)
         {
            return "";
         }
         var _loc3_:String = this.var_874[param1];
         var _loc4_:Boolean = this.var_875[param1];
         if(_loc3_ == null || _loc3_.length == 0)
         {
            _loc5_ = this._data.getSize(param2);
            _loc3_ = this._type;
            _loc6_ = "";
            if(param1 < spriteCount - 1)
            {
               _loc6_ = String.fromCharCode("a".charCodeAt() + param1);
               _loc6_ = FurnitureVisualizationData.const_1045[param1];
            }
            else
            {
               _loc6_ = "sd";
            }
            if(_loc5_ == 1)
            {
               _loc3_ += "_icon_" + _loc6_;
               _loc4_ = false;
            }
            else
            {
               _loc3_ += "_" + _loc5_ + "_" + _loc6_ + "_" + this._direction;
               _loc4_ = true;
            }
            this.var_874[param1] = _loc3_;
            this.var_875[param1] = _loc4_;
         }
         if(_loc4_)
         {
            _loc7_ = this.getFrameNumber(param1,param2);
            _loc3_ += "_" + _loc7_;
         }
         return _loc3_;
      }
      
      protected function getSpriteTag(param1:int, param2:int, param3:int) : String
      {
         if(this.var_727[param1] != null)
         {
            return this.var_727[param1];
         }
         if(this._data == null)
         {
            return "";
         }
         var _loc4_:String = this._data.getTag(param1,this._direction,param3);
         this.var_727[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteAlpha(param1:int, param2:int, param3:int) : int
      {
         if(this.var_722[param1] != null && !this.var_1777)
         {
            return this.var_722[param1];
         }
         if(this._data == null)
         {
            return LayerData.const_455;
         }
         var _loc4_:int = this._data.getAlpha(param1,param2,param3);
         _loc4_ *= this._alphaMultiplier;
         this.var_722[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteColor(param1:int, param2:int, param3:int) : int
      {
         if(this.var_725[param1] != null)
         {
            return this.var_725[param1];
         }
         if(this._data == null)
         {
            return ColorData.const_68;
         }
         var _loc4_:int = this._data.getColor(param1,param2,param3);
         this.var_725[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteXOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_726[param1] != null)
         {
            return this.var_726[param1];
         }
         if(this._data == null)
         {
            return LayerData.const_413;
         }
         var _loc4_:int = this._data.getXOffset(param1,param2,param3);
         this.var_726[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteYOffset(param1:int, param2:int, param3:int) : int
      {
         if(this.var_728[param1] != null)
         {
            return this.var_728[param1];
         }
         if(this._data == null)
         {
            return LayerData.const_470;
         }
         var _loc4_:int = this._data.getYOffset(param1,param2,param3);
         this.var_728[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteMouseCapture(param1:int, param2:int, param3:int) : Boolean
      {
         if(this.var_724[param1] != null)
         {
            return this.var_724[param1];
         }
         if(this._data == null)
         {
            return true;
         }
         var _loc4_:* = !this._data.getIgnoreMouse(param1,this._direction,param3);
         this.var_724[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteInk(param1:int, param2:int, param3:int) : int
      {
         if(this.var_729[param1] != null)
         {
            return this.var_729[param1];
         }
         if(this._data == null)
         {
            return LayerData.const_476;
         }
         var _loc4_:int = this._data.getInk(param1,this._direction,param3);
         this.var_729[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSpriteZOffset(param1:int, param2:int, param3:int) : Number
      {
         if(this.var_723[param1] != null)
         {
            return this.var_723[param1];
         }
         if(this._data == null)
         {
            return LayerData.const_419;
         }
         var _loc4_:Number = this._data.getZOffset(param1,param2,param3);
         this.var_723[param1] = _loc4_;
         return _loc4_;
      }
      
      protected function getSize(param1:int) : int
      {
         if(this._data != null)
         {
            return this._data.getSize(param1);
         }
         return param1;
      }
   }
}
