package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_686:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_657)
         {
            _structure = null;
            _assets = null;
            var_242 = null;
            var_253 = null;
            var_560 = null;
            var_509 = null;
            var_287 = null;
            if(!var_1160 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_670 = null;
            var_657 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_686[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_686[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_378:
               switch(_loc3_)
               {
                  case AvatarAction.const_621:
                  case AvatarAction.const_461:
                  case AvatarAction.const_335:
                  case AvatarAction.const_609:
                  case AvatarAction.const_367:
                  case AvatarAction.const_586:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_284:
            case AvatarAction.const_567:
            case AvatarAction.const_206:
            case AvatarAction.const_709:
            case AvatarAction.const_707:
            case AvatarAction.const_581:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
