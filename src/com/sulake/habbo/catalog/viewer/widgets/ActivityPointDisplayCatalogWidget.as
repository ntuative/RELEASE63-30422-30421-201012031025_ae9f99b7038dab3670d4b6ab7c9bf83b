package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import flash.display.BitmapData;
   
   public class ActivityPointDisplayCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      public function ActivityPointDisplayCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         var _loc1_:int = this.getActivityPointType();
         if(_loc1_ < 1)
         {
            _window.visible = false;
            return;
         }
         var _loc2_:HabboCatalog = HabboCatalog(page.viewer.catalog);
         var _loc3_:String = "catalog.purchase.youractivitypoints." + _loc1_;
         _loc2_.localization.registerParameter(_loc3_,"activitypoints","" + _loc2_.getPurse().getActivityPointsForType(_loc1_));
         _window.findChildByName("activity_points_txt").caption = _loc2_.localization.getKey(_loc3_);
         var _loc4_:BitmapDataAsset = BitmapDataAsset(_loc2_.assets.getAssetByName("icon_activity_point_" + _loc1_));
         var _loc5_:BitmapData = BitmapData(_loc4_.content);
         var _loc6_:IBitmapWrapperWindow = IBitmapWrapperWindow(_window.findChildByName("activity_point_icon"));
         _loc6_.disposesBitmap = false;
         _loc6_.bitmap = _loc5_;
         _loc6_.width = _loc5_.width;
         _loc6_.height = _loc5_.height;
         _window.visible = true;
      }
      
      private function getActivityPointType() : int
      {
         var _loc1_:* = null;
         for each(_loc1_ in page.offers)
         {
            if(_loc1_.activityPointType > 0)
            {
               return _loc1_.activityPointType;
            }
         }
         return 0;
      }
   }
}
