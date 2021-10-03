package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetPurchaseOverrideEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2249:XML;
      
      private var var_2247:XML;
      
      private var var_2250:XML;
      
      private var var_834:IWindowContainer;
      
      private var var_572:IButtonWindow;
      
      private var var_2659:IButtonWindow;
      
      private var var_1614:ITextWindow;
      
      private var var_1612:ITextWindow;
      
      private var var_1613:ITextWindow;
      
      private var var_2620:ITextWindow;
      
      private var var_83:Offer;
      
      private var var_2248:String = "";
      
      private var var_1280:Function;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_2249 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            this.var_2247 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            this.var_2250 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,this.onSelectProduct);
         events.addEventListener(WidgetEvent.const_886,this.onSetParameter);
         events.addEventListener(WidgetEvent.CWE_PURCHASE_OVERRIDE,this.onPurchaseOverride);
      }
      
      private function onPurchaseOverride(param1:CatalogWidgetPurchaseOverrideEvent) : void
      {
         this.var_1280 = param1.callback;
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_512:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2249) as IWindowContainer;
               break;
            case Offer.const_766:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2247) as IWindowContainer;
               break;
            case Offer.const_786:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(this.var_2250) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach..." + this.var_83.priceType);
         }
         if(_loc2_ != null)
         {
            if(this.var_834 != null)
            {
               _window.removeChild(this.var_834);
               this.var_834.dispose();
            }
            this.var_834 = _loc2_;
            _window.addChild(_loc2_);
            this.var_834.x = 0;
            this.var_834.y = 0;
         }
         this.var_1614 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         this.var_1612 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         this.var_1613 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         this.var_2620 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         this.var_572 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(this.var_572 != null)
         {
            if(this.var_1280 != null)
            {
               this.var_572.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1280);
            }
            else
            {
               this.var_572.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.var_1280);
               this.var_572.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPurchase);
            }
            this.var_572.disable();
         }
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc4_:* = null;
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         this.var_83 = param1.offer;
         this.attachStub(this.var_83.priceType);
         if(this.var_1614 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(this.var_83.priceInCredits));
            this.var_1614.caption = "${catalog.purchase.price.credits}";
         }
         var _loc3_:String = this.var_83.activityPointType == Purse.const_467 ? "pixels" : "activitypoints";
         if(this.var_1612 != null)
         {
            _loc4_ = "catalog.purchase.price.activitypoints." + this.var_83.activityPointType;
            _loc2_.registerParameter(_loc4_,_loc3_,this.var_83.priceInActivityPoints.toString());
            this.var_1612.caption = _loc2_.getKey(_loc4_);
         }
         if(this.var_1613 != null)
         {
            _loc4_ = "catalog.purchase.price.credits+activitypoints." + this.var_83.activityPointType;
            _loc2_.registerParameter(_loc4_,"credits",String(this.var_83.priceInCredits));
            _loc2_.registerParameter(_loc4_,_loc3_,String(this.var_83.priceInActivityPoints));
            this.var_1613.caption = _loc2_.getKey(_loc4_);
         }
         var _loc5_:IWindow = _window.findChildByName("activity_points_bg");
         if(_loc5_ != null)
         {
            _loc5_.color = this.var_83.activityPointType == 0 ? 6737151 : uint(13421772);
         }
         if(this.var_572 != null)
         {
            this.var_572.enable();
         }
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         this.var_2248 = param1.parameter;
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(this.var_83 != null)
         {
            Logger.log("Init Purchase: " + this.var_83.offerId + " " + this.var_83.localizationId);
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(this.var_83,page.pageId,this.var_2248);
         }
      }
   }
}
